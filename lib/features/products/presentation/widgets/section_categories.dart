import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:investment/core/extension/app_extensions.dart';
import '../../../../core/utils/colors/app_color.dart';
import '../../../../core/utils/loader/skeleton_loader/skeleton_card_category.dart';
import '../../../../core/utils/styles/app_fonts.dart';
import '../../../category/data/models/category_model/category_model.dart';
import '../../../category/presentation/manager/cubit.dart';
import '../../../category/presentation/manager/states.dart';
import 'card_category.dart';

class SectionCategories extends StatelessWidget {
  const SectionCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit,CategoriesState>(
        builder: (context,state) {
          if(state is Loading){
            return SkeletonCardCategory();
          } else if(state is Success){
            return SizedBox(
              height: context.screenHeight * 0.16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.appFamilyInter,
                        fontSize: 17,
                        color: AppColor.greyColorE20),
                  ),
                  SizedBox(height: 4,),
                  Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context,index){
                          CategoryModel categoryModel = state.categoriesModel[index];
                          return GestureDetector(
                              onTap: (){
                              },
                              child: CardCategory(categoryModel:categoryModel));
                        },
                        separatorBuilder: (context,index){
                          return Container(
                            width: 0,
                          );
                        },
                        itemCount: state.categoriesModel.length
                    ),
                  )
                ],
              ),
            );
          }else {
            return SizedBox();
          }

        }
      );
  }
}
