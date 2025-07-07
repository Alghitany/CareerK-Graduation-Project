import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/additional/additional_information_form.dart';
import 'widgets/certification/certifications_form.dart';
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
    print("Sesssssssssssssssssssion ID : ${widget.sessionId}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.catskillWhite,
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
          children: [
            GenerateCVTopBar(onSubmit: () {}),
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
              form: const EducationForm(),
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: experienceTiles,
              iconPath: 'assets/svgs/experience.svg',
              title: 'Experience',
              hint: "Position, Company, Achieved, Date",
              form: const ExperienceForm(),
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
              form: const ProjectsForm(),
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: certificationTiles,
              iconPath: 'assets/svgs/certificate.svg',
              title: 'Certifications',
              hint: "Certificate, Issuer, Date",
              form: const CertificationsForm(),
            ),
            verticalSpace(8),

            _buildAnimatedSection(
              tiles: additionalTiles,
              iconPath: 'assets/svgs/add.svg',
              title: 'Additional',
              hint: "Languages, SoftSkills, Activities",
              form: const AdditionalForm(),
            ),
            verticalSpace(8),

            AppTextButton(
              onPressed: () {
                //TODO:Generate Functionality
              },
              buttonText: "Generate",
              textStyle: AppTextStyles.font14WhitePoppinsMedium,
            )
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
    required Widget form,
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
                    content: form,
                    onAdd: () {
                      /// 👉 Correct Flow:
                      final newIndex = tiles.length;
                      tiles.add(newIndex);
                      listKey.currentState?.insertItem(
                        newIndex,
                        duration: const Duration(milliseconds: 700),
                      );
                      setInnerState(() {});

                      /// Auto-scroll after a slight delay
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
                            // DON'T REMOVE THIS DELETE WILL BE BROKEN IF U DID
                            final removedTile = tiles.removeAt(removedIndex);
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
                                    content: form,
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
