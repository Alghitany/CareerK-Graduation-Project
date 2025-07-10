// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_applied_jobs_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileAppliedJobsResponseBody
    _$DeveloperProfileAppliedJobsResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileAppliedJobsResponseBody(
          jobApplications: (json['job_applications'] as List<dynamic>?)
              ?.map((e) => JobApplication.fromJson(e as Map<String, dynamic>))
              .toList(),
          serviceApplications: (json['service_applications'] as List<dynamic>?)
              ?.map(
                  (e) => ServiceApplication.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperProfileAppliedJobsResponseBodyToJson(
        DeveloperProfileAppliedJobsResponseBody instance) =>
    <String, dynamic>{
      'job_applications': instance.jobApplications,
      'service_applications': instance.serviceApplications,
    };

JobApplication _$JobApplicationFromJson(Map<String, dynamic> json) =>
    JobApplication(
      applicationId: json['application_id'] as String?,
      status: json['status'] as String?,
      appliedAt: json['applied_at'] as String?,
      jobPost: json['job_post'] == null
          ? null
          : JobPost.fromJson(json['job_post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobApplicationToJson(JobApplication instance) =>
    <String, dynamic>{
      'application_id': instance.applicationId,
      'status': instance.status,
      'applied_at': instance.appliedAt,
      'job_post': instance.jobPost,
    };

JobPost _$JobPostFromJson(Map<String, dynamic> json) => JobPost(
      id: json['id'] as String?,
      title: json['title'] as String?,
      jobType: json['job_type'] as String?,
      location: json['location'] as String?,
      salaryRange: json['salary_range'] as String?,
      experienceRequired: json['experience_required'] as String?,
      jobDescription: json['job_description'] as String?,
      responsibilities: json['responsibilities'] as String?,
      qualifications: json['qualifications'] as String?,
      benefits: json['benefits'] as String?,
      applicationDeadline: json['application_deadline'] as String?,
      companyWebsite: json['company_website'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: json['category'] as String?,
      deadlineTask: json['deadline_task'] as String?,
      companyDepartment: json['company_department'] as String?,
      jobAvailability: json['job_availability'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobPostToJson(JobPost instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'job_type': instance.jobType,
      'location': instance.location,
      'salary_range': instance.salaryRange,
      'experience_required': instance.experienceRequired,
      'job_description': instance.jobDescription,
      'responsibilities': instance.responsibilities,
      'qualifications': instance.qualifications,
      'benefits': instance.benefits,
      'application_deadline': instance.applicationDeadline,
      'company_website': instance.companyWebsite,
      'skills': instance.skills,
      'category': instance.category,
      'deadline_task': instance.deadlineTask,
      'company_department': instance.companyDepartment,
      'job_availability': instance.jobAvailability,
      'company': instance.company,
    };

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as String?,
      companyName: json['company_name'] as String?,
      profilePicture: json['profile_picture'] as String?,
      industry: json['industry'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'profile_picture': instance.profilePicture,
      'industry': instance.industry,
    };

ServiceApplication _$ServiceApplicationFromJson(Map<String, dynamic> json) =>
    ServiceApplication(
      applicationId: json['application_id'] as String?,
      status: json['status'] as String?,
      submittedAt: json['submitted_at'] as String?,
      servicePost: json['service_post'] == null
          ? null
          : ServicePost.fromJson(json['service_post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceApplicationToJson(ServiceApplication instance) =>
    <String, dynamic>{
      'application_id': instance.applicationId,
      'status': instance.status,
      'submitted_at': instance.submittedAt,
      'service_post': instance.servicePost,
    };

ServicePost _$ServicePostFromJson(Map<String, dynamic> json) => ServicePost(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      budgetRange: json['budget_range'] as String?,
      serviceType: json['service_type'] as String?,
      requiredSkills: (json['required_skills'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deadline: json['deadline'] as String?,
      contactInfo: json['contact_info'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicePostToJson(ServicePost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'budget_range': instance.budgetRange,
      'service_type': instance.serviceType,
      'required_skills': instance.requiredSkills,
      'deadline': instance.deadline,
      'contact_info': instance.contactInfo,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'customer': instance.customer,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String?,
      name: json['name'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_picture': instance.profilePicture,
    };
