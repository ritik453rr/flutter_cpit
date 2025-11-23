import 'package:cpit/common/app_images.dart';
import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/common/custom_textfield.dart';
import 'package:cpit/common/empty_state.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/dashboard/home/home_controller.dart';
import 'package:cpit/pages/dashboard/home/home_widgets/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// A stateless widget that displays the Home screen with a custom app bar.
class HomeView extends StatelessWidget {
  HomeView({super.key});
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Global.hideKeyBoard();
      },
      child: Scaffold(
        appBar: customAppBar(
          title: Strings.dashTitle.tr,
          centerTitle: false,
          showBackBtn: false,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.onTapFloating();
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: Global.hzPadding),
          child: Column(
            children: [
              SizedBox(height: 10),
              /// Search TextField
              customTextField(
                hideBorder: true,
                controller: controller.serchCtr,
                hintText: "${Strings.search.tr}...",
                prefixIcon: AppImages.iconSearch,
                onChanged: (val) {
                  controller.searchStudent(val);
                },
              ),
              SizedBox(height: 1),
              Obx(
                () =>
                    controller.loading.value
                        ? Expanded(
                          child: Center(child: CircularProgressIndicator()),
                        )
                        : Expanded(
                          child: SmartRefresher(
                            controller: controller.refreshCtr,
                            enablePullUp: false,
                            header: MaterialClassicHeader(
                              color: Theme.of(context).indicatorColor,
                            ),
                            onRefresh: () {
                              Future.delayed(Duration(seconds: 2), () {
                                controller.refreshCtr.refreshCompleted();
                              });
                            },
                            child:
                                controller.filteredStudents.isEmpty
                                    ? emptyState(
                                      icon: Icons.group_outlined,
                                      title: Strings.noStudentsFound.tr,
                                      subtitle:
                                          Strings.addNewStudent.tr,
                                    )
                                    : ListView.builder(
                                      itemCount:
                                          controller.filteredStudents.length,
                                      shrinkWrap: true,
                                      padding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 70,
                                      ),
                                      itemBuilder: (context, index) {
                                        final student =
                                            controller.filteredStudents[index];
                                        return userCard(
                                          student: student,

                                          onTap: () {
                                            controller.onTapItem(index);
                                          },
                                        );
                                      },
                                    ),
                          ),
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
