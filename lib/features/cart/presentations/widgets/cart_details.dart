part of '../screens/cart.dart';

class CartDetails extends StatelessWidget {
  final CartModel cartModel;
  final List<ItemModel>? item;

  const CartDetails({super.key, required this.cartModel, this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      color: AppColor.greyColorFE,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
            SizedBox(height: 8,),
              Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(bottom: 0, top: 0),
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        ItemModel itemModel = cartModel.items![index];
                        return Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          color: AppColor.whiteColor,
                          elevation: 0.2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                    child: CachedNetworkImage(
                                      imageUrl: itemModel.product?.images?.first ?? "",
                                      errorWidget: (context, type, o) {
                                        return Container();
                                      },
                                    ),
                                  ),
                                ),
                                VerticalDivider(),
                                Expanded(
                                  child: SizedBox(
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [  SizedBox(
                                          width:
                                          MediaQuery.sizeOf(context).width * 0.45,
                                          child: Text(
                                            itemModel.product?.title ?? "",
                                            style: context.textTheme.titleMedium!
                                                .copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                AppFonts.appFamilyInter,
                                                color: AppColor.greyColorE20),
                                          ),
                                        ),
                                          SizedBox(height: 6,),
                                          Text(
                                            itemModel.product?.displayPrice() ?? "",
                                            style:
                                            context.textTheme.titleMedium!.copyWith(
                                              fontSize: 11,
                                              fontFamily: AppFonts.appFamilyInter,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.greyColor9E,
                                            ),
                                          ),

                                        ],
                                      ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            QuantitySelectorCart(
                                              initialQuantity: itemModel.quantity!,
                                              // Default initial quantity
                                              isLoading: (item != null &&
                                                  item!.contains(itemModel)),
                                              onPressedIncreaseQuantity: () {
                                                RequestEntities requestEntities =
                                                RequestEntities(
                                                    productModel:
                                                    itemModel.product,
                                                    quantity:
                                                    itemModel.quantity! + 1);
                                                context
                                                    .read<CartCubit>()
                                                    .updateItemFromCart(
                                                    requestEntities,
                                                    cartModel,
                                                    itemModel);
                                              },
                                              onPressedDecreaseQuantity: () {
                                                if (itemModel.quantity! - 1 == 0) {
                                                } else {
                                                  RequestEntities requestEntities =
                                                  RequestEntities(
                                                      productModel:
                                                      itemModel.product,
                                                      quantity:
                                                      itemModel.quantity! -
                                                          1);
                                                  context
                                                      .read<CartCubit>()
                                                      .updateItemFromCart(
                                                      requestEntities,
                                                      cartModel,
                                                      itemModel);
                                                }
                                              },
                                            ),
                                            IconButton(
                                              style: IconButton.styleFrom(
                                                fixedSize: Size(28, 28),
                                                // Ensure button is circular
                                                minimumSize: Size(28, 28),
                                                // Ensure button is circular
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                  // Ensures a circular shape
                                                  side: BorderSide(
                                                      color: AppColor.greyColorDE,
                                                      width: 1), // Border
                                                ),
                                                backgroundColor: Colors
                                                    .white, // Optional: Set a background color
                                              ),
                                              iconSize: 16,
                                              visualDensity:
                                              VisualDensity.compact,
                                              // Example usage of visualDensity
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                RequestEntities requestEntities=RequestEntities(productModel: itemModel.product);
                                                context.read<CartCubit>().deleteItemFromCart(requestEntities, cartModel, itemModel);
                                              },
                                              icon: SvgPicture.asset(
                                                  AppSvg.delete,
                                                  colorFilter:ColorFilter.mode(AppColor.greyColorDE,BlendMode.srcIn)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 16,
                          color: AppColor.greyColorF2.withValues(alpha: 0.4),
                        );
                      },
                      itemCount: cartModel.items!.length)),
              PaymentMethodSection(),
              SizedBox(height: 20,),
              cartModel.meta==null?SizedBox(): CheckoutSection(metaModel:cartModel.meta!),

            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 24,
              ),
              SafeArea(
                  child: TextButtonCustom(
                    text: 'Checkout',
                    onTap: () {
                      CacheHelper.removeCartContent();
                      context.pushReplacementNamed(RoutesName.orderConfirmed);
                    },
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
