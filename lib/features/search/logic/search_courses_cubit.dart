import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/search_courses_repo.dart';
import 'search_courses_state.dart';

class SearchCoursesCubit extends Cubit<SearchCoursesState> {
  final SearchCoursesRepo _repo;

  SearchCoursesCubit(this._repo) : super(const SearchCoursesState.initial());

  final TextEditingController searchController = TextEditingController();

  void searchCourses(String query) async {
    if (query.isEmpty) {
      emit(const SearchCoursesState.initial());
      return;
    }

    emit(const SearchCoursesState.loading());

    final response = await _repo.searchCourses(query);

    response.when(
      success: (data) => emit(SearchCoursesState.success(data)),
      failure: (error) => emit(SearchCoursesState.error(error)),
    );
  }
}
