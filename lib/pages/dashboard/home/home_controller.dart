// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get/get.dart';

/// Controller for managing the state and logic of the Home view.
class HomeController extends GetxController {
  // late PDFDocument pdfDoc;
  var pdfLoading = true.obs;
  var selectedIndex = 0.obs;
  PDFViewController? pdfViewController;
  int currentPage = 0;
  int totalPages = 0;

  @override
  void onInit() {
    super.onInit();
    // l
    //
    //
    // oadPdf();
  }

//   void nextPage() {
//     if (pdfViewController != null && currentPage < totalPages - 1) {
//       currentPage++;
// Future.delayed(Duration(milliseconds: 100), () {
//   pdfViewController?.setPage(currentPage + 1);
// });

      
//     }
//   }

//   void previousPage() {
//     if (pdfViewController != null && currentPage > 0) {
//       currentPage--;
//       pdfViewController!.setPage(currentPage);
//     }
//   }

 /// Handle item tap
  void onTapItem(int index) {
    // Get.dialog(
    //   barrierDismissible: false,
    //   Dialog(
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    //     backgroundColor: Colors.transparent,
    //     insetPadding: EdgeInsets.zero,
    //     child: Container(
    //       width: Get.width,
    //       // padding: EdgeInsets.symmetric(horizontal: 20),
    //       child: Column(
    //         // mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           SizedBox(height: 100),

    //           Container(
    //             height: 520,
    //             width: Get.width,
    //             child: PDF(
    //               swipeHorizontal: true,
    //               // autoSpacing: false,
    //               // defaultPage: currentPage,
    //               // pageFling: false,
    //               // enableSwipe: false,
    //               // pageSnap: false,
    //               // fitEachPage: false,
    //               backgroundColor: Colors.transparent,
    //               fitPolicy: FitPolicy.HEIGHT,
    //               onViewCreated: (PDFViewController controller) {
    //                 pdfViewController = controller;
    //               },
    //               onError: (error) {
    //                 print(error.toString());
    //               },
    //               onPageError:
    //                   (page, error) => print('$page: ${error.toString()}'),
    //               onPageChanged: (a, b) {
    //                 currentPage = a ?? 0;
    //                 totalPages = b ?? 0;
    //               },
    //             ).cachedFromUrl(
    //               'https://www.ecma-international.org/wp-content/uploads/ECMA-262_12th_edition_june_2021.pdf',
    //             ),
    //           ),

    //           TextButton(
    //             onPressed: () {
    //               nextPage();
    //             },
    //             child: Text(
    //               'increase',
    //               style: TextStyle(color: Colors.white, fontSize: 18),
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: () {
    //               previousPage();
    //             },
    //             child: Text(
    //               'Decrease',
    //               style: TextStyle(color: Colors.white, fontSize: 18),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
