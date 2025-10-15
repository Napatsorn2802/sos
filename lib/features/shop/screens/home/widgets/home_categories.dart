
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sos/common/widgets/image_text_widgets/verticel_image_text.dart';
import 'package:sos/features/shop/screens/sub_category/sub_categories.dart';
import 'package:sos/utils/constants/image_strings.dart';

class THomeCategortes extends StatelessWidget {
  const THomeCategortes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
        return  TVerticalImageText(image: TImages.sporticon, title: 'tree', onTap: () => Get.to(() => const SubCategoriesScreen()) ,);
    },
    
      ),
    );
  }
}
