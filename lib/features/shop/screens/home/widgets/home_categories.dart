
import 'package:flutter/material.dart';
import 'package:sos/common/widgets/image_text_widgets/verticel_image_text.dart';
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
        return  TVerticalImageText(image: TImages.sporticon, title: 'tree', onTap: (){} ,);
    },
    
      ),
    );
  }
}
