import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';
import 'widgets/additional/additional_information_form.dart';
import 'widgets/certification/certifications_form.dart';
import 'widgets/developer_profile_cv_generate_send_data_bloc_listener.dart';
import 'widgets/education/education_form.dart';
import 'widgets/experience/experience_form.dart';
import 'widgets/personal_info/personal_info_form.dart';
import 'widgets/project/project_form.dart';
import 'widgets/section_card.dart';
import 'widgets/skillsets/skillsets_form.dart';
import 'widgets/top_bar/generate_cv_top_bar.dart';

class DeveloperProfileCVGenerateScreen extends StatefulWidget {
  final String sessionId;

  const DeveloperProfileCVGenerateScreen({super.key, required this.sessionId});

  @override
  State<DeveloperProfileCVGenerateScreen> createState() =>
      _DeveloperProfileCVGenerateScreenState();
}

class _DeveloperProfileCVGenerateScreenState
    extends State<DeveloperProfileCVGenerateScreen>
    with TickerProviderStateMixin {
  final List<int> educationTiles = [0];
  final List<int> experienceTiles = [0];
  final List<int> projectTiles = [0];
  final List<int> certificationTiles = [0];
  final List<int> additionalTiles = [0];

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();

    cubit.addEducationControllers();
    cubit.addExperienceControllers();
    cubit.addProjectControllers();
    cubit.addCertificationControllers();
    cubit.addAdditionalControllers();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DeveloperProfileCVGenerateSendDataCubit>();

    return Scaffold(
      backgroundColor: ColorsManager.catskillWhite,
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
          children: [
            GenerateCVTopBar(onSubmit: () {
              cubit.emitSendDataState(sessionId: widget.sessionId);
            }),
            verticalSpace(8),

            /// Personal Info Section
            SectionCard(
              icon: SvgPicture.asset(
                'assets/svgs/person_outlined.svg',
                colorFilter: const ColorFilter.mode(
                    ColorsManager.primaryWildBlueYonder, BlendMode.srcIn),
              ),
              title: 'Personal Info',
              content: const PersonalInfoForm(),
              hint: "Name, Email, Phone, Address, Links",
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: educationTiles,
              iconPath: 'assets/svgs/education.svg',
              title: 'Education',
              hint: "Institution, Field, Date, Degree, GPA",
              formBuilder: (index) => EducationForm(index: index),
              onAddController: cubit.addEducationControllers,
              cubit: cubit,
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: experienceTiles,
              iconPath: 'assets/svgs/experience.svg',
              title: 'Experience',
              hint: "Position, Company, Achieved, Date",
              formBuilder: (index) => ExperienceForm(index: index),
              onAddController: cubit.addExperienceControllers,
              cubit: cubit,
            ),
            verticalSpace(8),

            SectionCard(
              icon: SvgPicture.asset('assets/svgs/skills.svg'),
              title: 'Skillsets',
              content: const SkillsetsForm(),
              hint: "Programming languages, Technologies ",
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: projectTiles,
              iconPath: 'assets/svgs/projects.svg',
              title: 'Projects',
              hint: "Title, Technologies, Description",
              formBuilder: (index) => ProjectsForm(index: index),
              onAddController: cubit.addProjectControllers,
              cubit: cubit,
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: certificationTiles,
              iconPath: 'assets/svgs/certificate.svg',
              title: 'Certifications',
              hint: "Certificate, Issuer, Date",
              formBuilder: (index) => CertificationsForm(index: index),
              onAddController: cubit.addCertificationControllers,
              cubit: cubit,
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: additionalTiles,
              iconPath: 'assets/svgs/add.svg',
              title: 'Additional',
              hint: "Languages, SoftSkills, Activities",
              formBuilder: (index) => AdditionalForm(index: index),
              onAddController: cubit.addAdditionalControllers,
              cubit: cubit,
            ),
            verticalSpace(8),

            AppTextButton(
              onPressed: () {
                cubit.emitSendDataState(sessionId: widget.sessionId);
              },
              buttonText: "Generate",
              textStyle: AppTextStyles.font14WhitePoppinsMedium,
            ),

            DeveloperProfileCVGenerateSendDataBlocListener(
                sessionId: widget.sessionId),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedSection({
    required List<int> tiles,
    required String iconPath,
    required String title,
    required String hint,
    required Widget Function(int index) formBuilder,
    required VoidCallback onAddController,
    required DeveloperProfileCVGenerateSendDataCubit
        cubit, // ✅ Added cubit param
  }) {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

    return StatefulBuilder(
      builder: (context, setInnerState) {
        return Column(
          children: [
            AnimatedList(
              key: listKey,
              initialItemCount: tiles.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index, animation) {
                final curvedAnimation = CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeOutExpo,
                );
                return SizeTransition(
                  sizeFactor: curvedAnimation,
                  child: SectionCard(
                    icon: SvgPicture.asset(
                      iconPath,
                      colorFilter: const ColorFilter.mode(
                        ColorsManager.primaryWildBlueYonder,
                        BlendMode.srcIn,
                      ),
                    ),
                    title: title,
                    hint: hint,
                    content: formBuilder(index),
                    onAdd: () {
                      onAddController();

                      final newIndex = tiles.length;
                      tiles.add(newIndex);
                      listKey.currentState?.insertItem(
                        newIndex,
                        duration: const Duration(milliseconds: 700),
                      );
                      setInnerState(() {});

                      Future.delayed(const Duration(milliseconds: 300), () {
                        _scrollController.animateTo(
                          _scrollController.position.maxScrollExtent + 300,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        );
                      });
                    },
                    onRemove: tiles.length > 1
                        ? () {
                            final removedIndex = index;

                            switch (title) {
                              case 'Education':
                                cubit.educationControllers
                                    .removeAt(removedIndex);
                                break;
                              case 'Experience':
                                cubit.experienceControllers
                                    .removeAt(removedIndex);
                                break;
                              case 'Projects':
                                cubit.projectControllers.removeAt(removedIndex);
                                break;
                              case 'Certifications':
                                cubit.certificationControllers
                                    .removeAt(removedIndex);
                                break;
                              case 'Additional':
                                cubit.additionalControllers
                                    .removeAt(removedIndex);
                                break;
                            }

                            tiles.removeAt(removedIndex);
                            listKey.currentState?.removeItem(
                              removedIndex,
                              (context, animation) {
                                final curved = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeInOutCubic,
                                );
                                return SizeTransition(
                                  sizeFactor: curved,
                                  child: SectionCard(
                                    icon: SvgPicture.asset(iconPath),
                                    title: title,
                                    hint: hint,
                                    content: formBuilder(index),
                                  ),
                                );
                              },
                              duration: const Duration(milliseconds: 700),
                            );
                            setInnerState(() {});
                          }
                        : null,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
