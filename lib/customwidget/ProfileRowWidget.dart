import "package:flutter/material.dart";
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';

class ProfileRowWidget extends StatelessWidget {
  final String image;
  final String label;
  final String txtValue;

  ProfileRowWidget({this.image, this.txtValue, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
      width: DeviceHelper.fullWidth,
      child: Column(
        children: [
          Container(
            width: DeviceHelper.fullWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    "assets/images/" + image,
                    height: DeviceHelper.deviceSize.width * 0.04,
                    width: DeviceHelper.deviceSize.width * 0.04,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: DeviceHelper.fullWidth,
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          txtValue,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              color: AppColors.APP_MENU_SUBHEADER_TEXT),
                        ),
                      ),
                    ]),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(label,
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(fontSize: 13, color: AppColors.DIVIDER)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
