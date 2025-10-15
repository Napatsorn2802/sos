
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/appbar/tabbar.dart';
import 'package:sos/common/widgets/brand/brand_card.dart';
import 'package:sos/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sos/common/widgets/layouts/grid_layout.dart';
import 'package:sos/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/features/shop/screens/brand/all_brand.dart';
import 'package:sos/features/shop/screens/store/widgets/category_tab.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/sizes.dart';
import 'package:sos/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}, iconColor: null,),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // search bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store' ,showBorder: true, showBackground: false,padding: EdgeInsets.zero, ),
                      const  SizedBox(height: TSizes.spaceBtwSections),
      
                        ///Featured Brands
                      TSectionHeading (title: 'สินค้ายอดนิยม', onPressed: () => Get.to(() => const AllBrandsScreen())),
                      const SizedBox (height: TSizes.spaceBtwItems / 1.5),
                      /// Brands GRID
                      TGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index) {
                              return GestureDetector(
                              onTap: (){},
                              child: const TBrandCard(showBorder: false),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                // /// Tabs -- Tutorial
                bottom: TTabBar(
                  tabs: const [
                      Tab(child: Text('flowering tree')),              // ไม้ประดับ
                      Tab(child: Text('flowering tree')),              // ไม้พุ่ม
                      Tab(child: Text('perennial plant')),                  // ไม้ยืนต้น
                      Tab(child: Text('medicinal plants')),              // ไม้สมุนไพร
                      Tab(child: Text('water plant')),                  // ไม้น้ำ
                      Tab(child: Text('ivy')),                // ไม้เลื้อย
                      Tab(child: Text('Auspicious wood')),  //ไม้มงคล
                      Tab(child: Text('fertilizer')),                // ปุ๋ย
                      Tab(child: Text('Cultivation equipment')),                // อุปกรณ์เพาะปลูก
                      
                  ]
                     
                ),
                
              ),
            ];
          },
      
          /// --- Body --- Tutorial [Section # 3, Video # 8]
         body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              
            ],
          ), 
          ),
        
      ),
    );
  }
}
