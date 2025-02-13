import 'package:flutter/material.dart';
import '../../../../../core/utils/colors/app_color.dart';
import '../../../../../core/utils/loader/skeleton_widget.dart';
import 'loader_checkout_section.dart';

class LoaderPageCart extends StatelessWidget {
  const LoaderPageCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SkeletonWidget(
                            widget: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: AppColor.greyColorF2,
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                child: SizedBox(
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(),
                          SizedBox(
                            height: 60,
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                SkeletonWidget(
                                  widget: Container(
                                    height: 15,
                                    width: 100,
                                    color: AppColor.greyColorF2,
                                  ),
                                ),
                                SkeletonWidget(
                                  widget: Container(
                                    height: 12,
                                    width: 80,
                                    color: AppColor.greyColorF2,
                                  ),
                                ),
                                SkeletonWidget(
                                  widget: Container(
                                    height: 12,
                                    width: 60,
                                    color: AppColor.greyColorF2,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Row(
                            children: [
                              SkeletonWidget(
                                widget: IconButton(
                                  iconSize: 18,
                                  style: IconButton.styleFrom(
                                    fixedSize: Size(40, 34),
                                    minimumSize: Size(40, 34),
                                    maximumSize: Size(40, 40),
                                  ),
                                  visualDensity: VisualDensity.compact,
                                  onPressed: () {},
                                  icon: Container(
                                    height: 80,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.greyColorF2,
                                    ),
                                  ),
                                ),
                              ),
                              SkeletonWidget(
                                widget: IconButton(
                                    iconSize: 18,
                                    style: IconButton.styleFrom(
                                      fixedSize: Size(40, 34),
                                      minimumSize: Size(40, 34),
                                      maximumSize: Size(40, 40),
                                    ),
                                    visualDensity: VisualDensity.compact,
                                    onPressed: () {},
                                    icon: Container(
                                      height: 80,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColor.greyColorF2,
                                      ),
                                    )),
                              ),
                              SkeletonWidget(
                                widget: IconButton(
                                    iconSize: 18,
                                    style: IconButton.styleFrom(
                                      fixedSize: Size(40, 34),
                                      minimumSize: Size(40, 34),
                                      maximumSize: Size(40, 40),
                                    ),
                                    visualDensity: VisualDensity.compact,
                                    onPressed: () {},
                                    icon: Container(
                                      height: 80,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColor.greyColorF2,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 16,
                    color: AppColor.greyColor9E.withValues(alpha: 0.4),
                  );
                },
                itemCount: 3)),
        Divider(
          height: 12,
          color: AppColor.greyColor9E.withValues(alpha: 0.4),
        ),

        Column(
          children: [
            LoaderCheckoutSection(),
          ],
        ),
      ],
    );
  }
}
