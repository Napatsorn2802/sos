import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sos/common/widgets/appbar/appbar.dart';
import 'package:sos/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sos/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:sos/common/widgets/texts/section_heading.dart';
import 'package:sos/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:sos/features/personalization/screens/address/address.dart';
import 'package:sos/features/personalization/screens/profile/profile.dart';
import 'package:sos/utils/constants/colors.dart';
import 'package:sos/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- ส่วนหัว (Header)
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App Bar ด้านบน
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  /// -- โปรไฟล์ผู้ใช้
                  TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// --- ส่วนเนื้อหา (Body)
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- หมวด Account Settings
                  const TSectionHeading(
                    title: 'การตั้งค่าบัญชี',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// --- เมนูต่าง ๆ ของผู้ใช้
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'ที่อยู่',
                    subtitle: 'กำหนดที่อยู่จัดส่ง',
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ), 
                  TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'ตะกร้าสินค้า',
                      subtitle: 'เพิ่ม ลบสินค้า และย้ายไปที่จุดชำระเงิน',
                      ),
                  TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'คำสั่งซื้อ',
                      subtitle: 'คำสั่งซื้อที่กำลังดำเนินการและเสร็จสมบูรณ์',
                      ),
                  TSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'บัญชีธนาคาร',
                      subtitle: 'ธนาคารที่ลงทะเบียนไว้',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'คูปองของฉัน',
                      subtitle: 'รายการคูปองส่วนลดทั้งหมด',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'การแจ้งเตือน',
                      subtitle: 'ตั้งค่าข้อความแจ้งเตือนประเภทใดก็ได้',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'ความเป็นส่วนตัว',
                      subtitle: 'จัดการการใช้งานข้อมูลและบัญชีที่เชื่อมโยง',
                      onTap: () {}),

                  /// --- หมวด App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'ตั้งค่าแอพ', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'โหลดข้อมูล',
                      subtitle: 'อัปโหลดข้อมูลไปยัง Cloud Firebase ของคุณ',
                      onTap: () {}),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'ตำแหน่งทางภูมิศาสตร์',
                    subtitle: 'ตั้งค่าคำแนะนำตามสถานที่',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'เซฟโหมด',
                    subtitle: 'ผลการค้นหาปลอดภัยสำหรับทุกวัย',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'คุณภาพของภาพระดับ HD',
                    subtitle: 'ตั้งค่าคุณภาพของภาพที่จะเห็น',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                const SizedBox(height: TSizes.spaceBtwSections),
                
                  /// ออก
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        // ยืนยันก่อนออก
                        await showDialog<bool>(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text('Logout'),
                            content: const Text(
                                'คุณแน่ใจใช่ไหมที่จะออกแอพ?'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, true),
                                child: const Text(
                                  'Yes, Logout',
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ),
                            ],
                          ),
                        );

                      
                      },
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}