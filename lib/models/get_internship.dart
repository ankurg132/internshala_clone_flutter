class Internship {
  int? id;
  String? title;
  String? employmentType;
  ApplicationStatusMessage? applicationStatusMessage;
  String? jobTitle;
  bool? workFromHome;
  String? segment;
  String? segmentLabelValue;
  String? internshipTypeLabelValue;
  List<String>? jobSegments;
  String? companyName;
  String? companyUrl;
  bool? isPremium;
  bool? isPremiumInternship;
  String? employerName;
  String? companyLogo;
  String? type;
  String? url;
  int? isInternchallenge;
  bool? isExternal;
  bool? isActive;
  String? expiresAt;
  String? closedAt;
  String? profileName;
  bool? partTime;
  String? startDate;
  String? duration;
  Stipend? stipend;
  String? salary;
  String? jobExperience;
  String? experience;
  String? postedOn;
  int? postedOnDateTime;
  String? applicationDeadline;
  String? expiringIn;
  String? postedByLabel;
  String? postedByLabelType;
  List<String>? locationNames;
  List<Locations>? locations;
  String? startDateComparisonFormat;
  String? startDate1;
  String? startDate2;
  bool? isPpo;
  bool? isPpoSalaryDisclosed;
  String? ppoSalary;
  String? ppoSalary2;
  String? ppoLabelValue;
  bool? toShowExtraLabel;
  String? extraLabelValue;
  bool? isExtraLabelBlack;
  List<String>? campaignNames;
  String? campaignName;
  bool? toShowInSearch;
  String? campaignUrl;
  DateTime? campaignStartDateTime;
  DateTime? campaignLaunchDateTime;
  DateTime? campaignEarlyAccessStartDateTime;
  DateTime? campaignEndDateTime;
  List<Labels>? labels;
  String? labelsApp;
  List<String>? labelsAppInCard;
  bool? isCovidWfhSelected;
  bool? toShowCardMessage;
  String? message;
  bool? isApplicationCappingEnabled;
  String? applicationCappingMessage;
  List<String>? overrideMetaDetails;
  bool? eligibleForEasyApply;
  bool? eligibleForB2bApplyNow;
  bool? toShowB2bLabel;
  bool? isInternationalJob;
  bool? toShowCoverLetter;
  String? officeDays;

  Internship(
      {this.id,
      this.title,
      this.employmentType,
      this.applicationStatusMessage,
      this.jobTitle,
      this.workFromHome,
      this.segment,
      this.segmentLabelValue,
      this.internshipTypeLabelValue,
      this.jobSegments,
      this.companyName,
      this.companyUrl,
      this.isPremium,
      this.isPremiumInternship,
      this.employerName,
      this.companyLogo,
      this.type,
      this.url,
      this.isInternchallenge,
      this.isExternal,
      this.isActive,
      this.expiresAt,
      this.closedAt,
      this.profileName,
      this.partTime,
      this.startDate,
      this.duration,
      this.stipend,
      this.salary,
      this.jobExperience,
      this.experience,
      this.postedOn,
      this.postedOnDateTime,
      this.applicationDeadline,
      this.expiringIn,
      this.postedByLabel,
      this.postedByLabelType,
      this.locationNames,
      this.locations,
      this.startDateComparisonFormat,
      this.startDate1,
      this.startDate2,
      this.isPpo,
      this.isPpoSalaryDisclosed,
      this.ppoSalary,
      this.ppoSalary2,
      this.ppoLabelValue,
      this.toShowExtraLabel,
      this.extraLabelValue,
      this.isExtraLabelBlack,
      this.campaignNames,
      this.campaignName,
      this.toShowInSearch,
      this.campaignUrl,
      this.campaignStartDateTime,
      this.campaignLaunchDateTime,
      this.campaignEarlyAccessStartDateTime,
      this.campaignEndDateTime,
      this.labels,
      this.labelsApp,
      this.labelsAppInCard,
      this.isCovidWfhSelected,
      this.toShowCardMessage,
      this.message,
      this.isApplicationCappingEnabled,
      this.applicationCappingMessage,
      this.overrideMetaDetails,
      this.eligibleForEasyApply,
      this.eligibleForB2bApplyNow,
      this.toShowB2bLabel,
      this.isInternationalJob,
      this.toShowCoverLetter,
      this.officeDays});

  Internship.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    employmentType = json['employment_type'];
    applicationStatusMessage = json['application_status_message'] != null
        ? ApplicationStatusMessage.fromJson(json['application_status_message'])
        : null;
    jobTitle = json['job_title'];
    workFromHome = json['work_from_home'];
    segment = json['segment'];
    segmentLabelValue = json['segment_label_value'];
    internshipTypeLabelValue = json['internship_type_label_value'];
    if (json['job_segments'] != null) {
      jobSegments = <String>[];
      json['job_segments'].forEach((v) {
        jobSegments?.add(v);
      });
    }
    companyName = json['company_name'];
    companyUrl = json['company_url'];
    isPremium = json['is_premium'];
    isPremiumInternship = json['is_premium_internship'];
    employerName = json['employer_name'];
    companyLogo = json['company_logo'];
    type = json['type'];
    url = json['url'];
    isInternchallenge = json['is_internchallenge'];
    isExternal = json['is_external'];
    isActive = json['is_active'];
    expiresAt = json['expires_at'];
    closedAt = json['closed_at'];
    profileName = json['profile_name'];
    partTime = json['part_time'];
    startDate = json['start_date'];
    duration = json['duration'];
    stipend =
        json['stipend'] != null ? Stipend.fromJson(json['stipend']) : null;
    salary = json['salary'];
    jobExperience = json['job_experience'];
    experience = json['experience'];
    postedOn = json['posted_on'];
    postedOnDateTime = json['postedOnDateTime'];
    applicationDeadline = json['application_deadline'];
    expiringIn = json['expiring_in'];
    postedByLabel = json['posted_by_label'];
    postedByLabelType = json['posted_by_label_type'];
    locationNames = json['location_names'].cast<String>();
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) {
        locations!.add(Locations.fromJson(v));
      });
    }
    startDateComparisonFormat = json['start_date_comparison_format'];
    startDate1 = json['start_date1'];
    startDate2 = json['start_date2'];
    isPpo = json['is_ppo'];
    isPpoSalaryDisclosed = json['is_ppo_salary_disclosed'];
    ppoSalary = json['ppo_salary'];
    ppoSalary2 = json['ppo_salary2'];
    ppoLabelValue = json['ppo_label_value'];
    toShowExtraLabel = json['to_show_extra_label'];
    extraLabelValue = json['extra_label_value'];
    isExtraLabelBlack = json['is_extra_label_black'];
    if (json['campaign_names'] != null) {
      campaignNames = <String>[];
      json['campaign_names'].forEach((v) {
        campaignNames?.add(v);
      });
    }
    campaignName = json['campaign_name'];
    toShowInSearch = json['to_show_in_search'];
    campaignUrl = json['campaign_url'];
    campaignStartDateTime = json['campaign_start_date_time'];
    campaignLaunchDateTime = json['campaign_launch_date_time'];
    campaignEarlyAccessStartDateTime =
        json['campaign_early_access_start_date_time'];
    campaignEndDateTime = json['campaign_end_date_time'];
    if (json['labels'] != null) {
      labels = <Labels>[];
      json['labels'].forEach((v) {
        labels!.add(Labels.fromJson(v));
      });
    }
    labelsApp = json['labels_app'];
    labelsAppInCard = json['labels_app_in_card'].cast<String>();
    isCovidWfhSelected = json['is_covid_wfh_selected'];
    toShowCardMessage = json['to_show_card_message'];
    message = json['message'];
    isApplicationCappingEnabled = json['is_application_capping_enabled'];
    applicationCappingMessage = json['application_capping_message'];
    if (json['override_meta_details'] != null) {
      overrideMetaDetails = <String>[];
      json['override_meta_details'].forEach((v) {
        overrideMetaDetails!.add(v);
      });
    }
    eligibleForEasyApply = json['eligible_for_easy_apply'];
    eligibleForB2bApplyNow = json['eligible_for_b2b_apply_now'];
    toShowB2bLabel = json['to_show_b2b_label'];
    isInternationalJob = json['is_international_job'];
    toShowCoverLetter = json['to_show_cover_letter'];
    officeDays = json['office_days'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['employment_type'] = employmentType;
    if (applicationStatusMessage != null) {
      data['application_status_message'] = applicationStatusMessage!.toJson();
    }
    data['job_title'] = jobTitle;
    data['work_from_home'] = workFromHome;
    data['segment'] = segment;
    data['segment_label_value'] = segmentLabelValue;
    data['internship_type_label_value'] = internshipTypeLabelValue;
    if (jobSegments != null) {
      data['job_segments'] = jobSegments?.toList();
    }
    data['company_name'] = companyName;
    data['company_url'] = companyUrl;
    data['is_premium'] = isPremium;
    data['is_premium_internship'] = isPremiumInternship;
    data['employer_name'] = employerName;
    data['company_logo'] = companyLogo;
    data['type'] = type;
    data['url'] = url;
    data['is_internchallenge'] = isInternchallenge;
    data['is_external'] = isExternal;
    data['is_active'] = isActive;
    data['expires_at'] = expiresAt;
    data['closed_at'] = closedAt;
    data['profile_name'] = profileName;
    data['part_time'] = partTime;
    data['start_date'] = startDate;
    data['duration'] = duration;
    if (stipend != null) {
      data['stipend'] = stipend!.toJson();
    }
    data['salary'] = salary;
    data['job_experience'] = jobExperience;
    data['experience'] = experience;
    data['posted_on'] = postedOn;
    data['postedOnDateTime'] = postedOnDateTime;
    data['application_deadline'] = applicationDeadline;
    data['expiring_in'] = expiringIn;
    data['posted_by_label'] = postedByLabel;
    data['posted_by_label_type'] = postedByLabelType;
    data['location_names'] = locationNames;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    data['start_date_comparison_format'] = startDateComparisonFormat;
    data['start_date1'] = startDate1;
    data['start_date2'] = startDate2;
    data['is_ppo'] = isPpo;
    data['is_ppo_salary_disclosed'] = isPpoSalaryDisclosed;
    data['ppo_salary'] = ppoSalary;
    data['ppo_salary2'] = ppoSalary2;
    data['ppo_label_value'] = ppoLabelValue;
    data['to_show_extra_label'] = toShowExtraLabel;
    data['extra_label_value'] = extraLabelValue;
    data['is_extra_label_black'] = isExtraLabelBlack;
    if (campaignNames != null) {
      data['campaign_names'] = campaignNames!.map((v) => v).toList();
    }
    data['campaign_name'] = campaignName;
    data['to_show_in_search'] = toShowInSearch;
    data['campaign_url'] = campaignUrl;
    data['campaign_start_date_time'] = campaignStartDateTime;
    data['campaign_launch_date_time'] = campaignLaunchDateTime;
    data['campaign_early_access_start_date_time'] =
        campaignEarlyAccessStartDateTime;
    data['campaign_end_date_time'] = campaignEndDateTime;
    if (labels != null) {
      data['labels'] = labels!.map((v) => v.toJson()).toList();
    }
    data['labels_app'] = labelsApp;
    data['labels_app_in_card'] = labelsAppInCard;
    data['is_covid_wfh_selected'] = isCovidWfhSelected;
    data['to_show_card_message'] = toShowCardMessage;
    data['message'] = message;
    data['is_application_capping_enabled'] = isApplicationCappingEnabled;
    data['application_capping_message'] = applicationCappingMessage;
    if (overrideMetaDetails != null) {
      data['override_meta_details'] = overrideMetaDetails?.toList();
    }
    data['eligible_for_easy_apply'] = eligibleForEasyApply;
    data['eligible_for_b2b_apply_now'] = eligibleForB2bApplyNow;
    data['to_show_b2b_label'] = toShowB2bLabel;
    data['is_international_job'] = isInternationalJob;
    data['to_show_cover_letter'] = toShowCoverLetter;
    data['office_days'] = officeDays;
    return data;
  }
}

class ApplicationStatusMessage {
  bool? toShow;
  String? message;
  String? type;

  ApplicationStatusMessage({this.toShow, this.message, this.type});

  ApplicationStatusMessage.fromJson(Map<String, dynamic> json) {
    toShow = json['to_show'];
    message = json['message'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['to_show'] = toShow;
    data['message'] = message;
    data['type'] = type;
    return data;
  }
}

class Stipend {
  String? salary;
  Null tooltip;
  int? salaryValue1;
  Null salaryValue2;
  String? salaryType;
  String? currency;
  String? scale;
  bool? largeStipendText;

  Stipend(
      {this.salary,
      this.tooltip,
      this.salaryValue1,
      this.salaryValue2,
      this.salaryType,
      this.currency,
      this.scale,
      this.largeStipendText});

  Stipend.fromJson(Map<String, dynamic> json) {
    salary = json['salary'];
    tooltip = json['tooltip'];
    salaryValue1 = json['salaryValue1'];
    salaryValue2 = json['salaryValue2'];
    salaryType = json['salaryType'];
    currency = json['currency'];
    scale = json['scale'];
    largeStipendText = json['large_stipend_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['salary'] = salary;
    data['tooltip'] = tooltip;
    data['salaryValue1'] = salaryValue1;
    data['salaryValue2'] = salaryValue2;
    data['salaryType'] = salaryType;
    data['currency'] = currency;
    data['scale'] = scale;
    data['large_stipend_text'] = largeStipendText;
    return data;
  }
}

class Locations {
  String? string;
  String? link;
  String? country;
  String? region;
  String? locationName;

  Locations(
      {this.string, this.link, this.country, this.region, this.locationName});

  Locations.fromJson(Map<String, dynamic> json) {
    string = json['string'];
    link = json['link'];
    country = json['country'];
    region = json['region'];
    locationName = json['locationName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['string'] = string;
    data['link'] = link;
    data['country'] = country;
    data['region'] = region;
    data['locationName'] = locationName;
    return data;
  }
}

class Labels {
  List<String>? labelValue;
  List<String>? labelMobile;
  List<String>? labelApp;
  List<String>? labelsAppInCard;

  Labels(
      {this.labelValue, this.labelMobile, this.labelApp, this.labelsAppInCard});

  Labels.fromJson(Map<String, dynamic> json) {
    labelValue = json['label_value'].cast<String>();
    labelMobile = json['label_mobile'].cast<String>();
    labelApp = json['label_app'].cast<String>();
    labelsAppInCard = json['labels_app_in_card'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label_value'] = labelValue;
    data['label_mobile'] = labelMobile;
    data['label_app'] = labelApp;
    data['labels_app_in_card'] = labelsAppInCard;
    return data;
  }
}
