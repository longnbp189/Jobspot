import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/design/app_format.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/login/domain/usecases/login_use_case.dart';
import 'package:jobspot/feature/auth/feature/profile/domain/usecases/profile_usecase.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';
import 'package:jobspot/services/user_cache_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<Login>(_onLogin);
    on<SignUp>(_onSignUp);
    on<Logout>(_onLogout);
    on<ForgotPasswordRequested>(_onForgotPasswordRequested);
    on<ForgotEmailChangedRequested>(_onForgotEmailChangedRequested);
    on<GetUserRequested>(_onGetUserRequested);
    on<LoginWithUsernameAndPasswordRequested>(
        _onLoginWithUsernameAndPasswordRequested);
    on<LoginEmailChangedRequested>(_onLoginUsernameChangedRequested);
    on<LoginPasswordChangedRequested>(_onLoginPasswordChangedRequested);
    on<LoginConfirmPasswordChangedRequested>(
        _onLoginConfirmPasswordChangedRequested);
    on<LoginFullnameChangedRequested>(_onLoginFullnameChangedRequested);
    on<InitUserRequested>(_onInitUserRequested);
  }

  FutureOr<void> _onLogin(Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await serviceLocator<LoginUsecase>().loginWithGoogle();
    UserModel? userResponse;
    result.fold((l) => emit(state.copyWith(error: l.message, isLoading: false)),
        (r) => userResponse = r);

    if (userResponse != null) {
      final user = await serviceLocator<UserCacheService>().getUser();

      emit(state.copyWith(isLoading: false, user: user));
    }
  }

  FutureOr<void> _onSignUp(SignUp event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true, error: '', signUpSuccess: null));
    try {
      await serviceLocator<LoginUsecase>()
          .signUp(email: state.email.trim(), password: state.password.trim());
      emit(state.copyWith(signUpSuccess: true, isLoading: false));
    } on FirebaseAuthException catch (_) {
      emit(state.copyWith(signUpSuccess: false, isLoading: false));
    }
  }

  FutureOr<void> _onLogout(Logout event, Emitter<AuthState> emit) async {
    await serviceLocator<LoginUsecase>().logout(state.user?.id ?? '');
    // await serviceLocator<UserCacheService>().deleteUser();
    emit(state.copyWith(user: null));
  }

  FutureOr<void> _onLoginWithUsernameAndPasswordRequested(
      LoginWithUsernameAndPasswordRequested event,
      Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true, error: ''));
    final result = await serviceLocator<LoginUsecase>()
        .loginWithUsernameAndPassword(
            username: state.email.trim(), password: state.password);
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isLoading: false)),
      (r) => emit(state.copyWith(user: r, isLoading: false)),
    );
    // emit(state.copyWith(error: ''));
  }

  FutureOr<void> _onLoginUsernameChangedRequested(
      LoginEmailChangedRequested event, Emitter<AuthState> emit) {
    emit(state.copyWith(email: event.email, error: ''));
  }

  FutureOr<void> _onLoginPasswordChangedRequested(
      LoginPasswordChangedRequested event, Emitter<AuthState> emit) {
    emit(state.copyWith(password: event.password, error: ''));
  }

  // final companies = [
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY TNHH GIẢI PHÁP ECR VIỆT NAM',
  //     aboutCompany:
  //         'CÔNG TY TNHH GIẢI PHÁP ECR VIỆT NAM Ngành nghề chính: Lập trình máy vi tính',
  //     address:
  //         'Tòa nhà The Morning Star, 57 Quốc Lộ 13, Phường 26, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam',
  //     employee: 500,
  //     follower: 59,
  //     image:
  //         'https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN002SWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--29a9ccea815d61dcacf0d95f6f4e013b151121cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFJc0FXa0NMQUU9IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--15c3f2f3e11927673ae52b71712c1f66a7a1b7bd/ECR_Logo_Stick.png',
  //     link:
  //         'https://hosocongty.vn/cong-ty-tnhh-giai-phap-ecr-viet-nam-com-1954617.htm',
  //     type: 'Tech',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'Công ty Cổ phần Voyager',
  //     aboutCompany:
  //         'VOYAGER INC. is a professional ‘offshore’ software development organization. To thrive on delivering challenging projects for a wide variety of customers, we use the latest technologies to develop software for business intelligence, ERP, relationship networks, GIS, risk management systems and application for mobile devices.Our vision and mission are not only to open, strengthen our business market in IT Software field but also to provide you a chance for your career path, to enrich your professional knowledge and commitment to build a friendly, energetic and enthusiastic working environment.',
  //     address:
  //         'Tòa nhà SBI, đường 3, Công viên Phần mềm Quang Trung, phường Tân Chánh Hiệp, Quận 12, Tp Hồ Chí Minh',
  //     employee: 99,
  //     follower: 12,
  //     image:
  //         'https://static.topcv.vn/company_logos/kCGQzQsYeKsN68QZtIVZhgB473TJedza_1656484998____8aa3a56ca51517b37d795d40b311bea7.jpg',
  //     link: 'https://voyager-hcm.com/',
  //     type: 'Tech',
  //   ),
  //   // Add more companies as needed
  // ];

  // List<String> type = [
  //   'Business',
  //   'Technology',
  //   'Post and Telecommunication',
  //   'Real estate',
  //   'Travel',
  //   'Media',
  //   'Education'
  //       'Graphic design',
  //   'Service',
  //   'Logistics',
  //   'Other'
  // ];

  FutureOr<void> _onGetUserRequested(
      GetUserRequested event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));

    // final collectionReference = FirebaseFirestore.instance.collection('Jobs');

    // for (final company in job) {
    //   await collectionReference.doc(company.id).set(company.toJson());
    // }

    // final collectionReference = FirebaseFirestore.instance
    //     .collection('Companies')
    //     .doc('SepLV6cRtRsxrxqOsnkl')
    //     .collection("Jobs");

    // for (final company in job) {
    //   await collectionReference.doc(company.id).set(company.toJson());
    // }

    //  final collectionReference =
    //     FirebaseFirestore.instance.collection('JobCategory');

    // DocumentReference docRef = await collectionReference.add({});

    // // Update the document with the list of job types
    // await docRef.set({
    //   'categories': type,
    // });

    final result = await serviceLocator<UserCacheService>().getUser();
    if (result != null) {
      //      final collectionReference =
      //     FirebaseFirestore.instance.collection('NotificationUser') .doc(result.id)
      //       .collection("Noti");

      // for (final company in notification) {
      //   await collectionReference.doc(company.id).set(company.toJson());
      // }
      emit(state.copyWith(user: result, isLoading: false));
    }
  }

  FutureOr<void> _onForgotPasswordRequested(
      ForgotPasswordRequested event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true, error: ''));

    final result = await serviceLocator<LoginUsecase>()
        .forgotPassword(email: state.forgotEmail.trim());
    result.fold(
      (l) => emit(state.copyWith(error: l.message, isLoading: false)),
      (r) => emit(state.copyWith(sendEmailSuccess: true, isLoading: false)),
    );
    emit(state.copyWith(sendEmailSuccess: false, error: ''));
  }

  FutureOr<void> _onForgotEmailChangedRequested(
      ForgotEmailChangedRequested event, Emitter<AuthState> emit) {
    emit(state.copyWith(forgotEmail: event.email));
  }

  FutureOr<void> _onLoginFullnameChangedRequested(
      LoginFullnameChangedRequested event, Emitter<AuthState> emit) {
    emit(state.copyWith(fullName: event.fullName));
  }

  FutureOr<void> _onLoginConfirmPasswordChangedRequested(
      LoginConfirmPasswordChangedRequested event, Emitter<AuthState> emit) {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }

  // final companies = [
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'ECR SOLUTIONS VIETNAM CO., LTD',
  //     aboutCompany:
  //         'ECR VIETNAM SOLUTION CO., LTD Main industry: Computer programming',
  //     address:
  //         'The Morning Star Building, 57 National Highway 13, Ward 26, Binh Thanh District, Ho Chi Minh City, Vietnam',
  //     employee: 500,
  //     follower: 59,
  //     image:
  //         'https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN002SWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--29a9ccea815d61dcacf0d95f6f4e013b151121cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFJc0FXa0NMQUU9IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--15c3f2f3e11927673ae52b71712c1f66a7a1b7bd/ECR_Logo_Stick.png',
  //     link:
  //         'https://hosocongty.vn/cong-ty-tnhh-giai-phap-ecr-viet-nam-com-1954617.htm',
  //     type: 'Technical',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'Voyager Joint Stock Company',
  //     aboutCompany:
  //         'VOYAGER INC. is a professional ‘offshore’ software development organization. To thrive on delivering challenging projects for a wide variety of customers, we use the latest technologies to develop software for business intelligence, ERP, relationship networks, GIS, risk management systems and application for mobile devices.Our vision and mission are not only to open , strengthen our business market in IT Software field but also to provide you a chance for your career path, to enrich your professional knowledge and commitment to build a friendly, energetic and enthusiastic working environment.',
  //     address:
  //         'SBI Building, Road 3, Quang Trung Software Park, Tan Chanh Hiep Ward, District 12, Ho Chi Minh City',
  //     employee: 99,
  //     follower: 12,
  //     image:
  //         'https://static.topcv.vn/company_logos/kCGQzQsYeKsN68QZtIVZhgB473TJedza_1656484998____8aa3a56ca51517b37d795d40b311bea7.jpg',
  //     link: 'https://voyager-hcm.com/',
  //     type: 'Technical',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'WEDDING & CONFERENCE CENTER MIPEC PALACE',
  //     aboutCompany:
  //         'MIPEC PALACE Convention and Wedding Center is a unit under the management of Hanoi Military Petrochemical Joint Stock Company (MIPEC). This is a project in the field of Weddings & Events. With the mission of creating a professional and friendly Conference Wedding Restaurant brand in Hanoi capital, we always strive and dedicate ourselves to bring romantic moments, unforgettable impressions for couples. and even invited guests to attend.',
  //     address: '229 Tay Son, Dong Da, City. Hanoi',
  //     employee: 499,
  //     follower: 59,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/B3liLb6TxRmh8RZ0xG1VIfJwAKxjwQrq_1691825152____b1eb605a0878ca07febd8bda5e75e76b.png',
  //     link: 'http://mipecpalace.vn',
  //     type: 'Service',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'SUNVALUE ASSESSMENT GROUP CO., LTD',
  //     aboutCompany:
  //         'SunValue Brand pioneers in applying technology in valuation, with a system of more than 40 branches, transaction offices nationwide, 2 representative offices in the US, Australia, etc. We provide customers with valuation services. Professional real estate including: SunReal - Real Estate Appraisal, SunInvest - Investment Project Appraisal, SunAsset - Business Valuation, SunMovables - Real Estate Appraisal, SunResources - Confidentiality price of natural resources, ..for the purpose of buying, selling, transferring, borrowing, investing, joint venture, equitization, M&A, court, financial proof of study abroad settlement, debt settlement, …contributing to the prosperous development of our customers and businesses. In the current trend of international economic integration, Vietnam\'s economic sectors are facing great opportunities and challenges, requiring economic groups and businesses in addition to improving product quality. /services by constantly improving technology and applying information technology, but also strengthening joint venture activities with potential partners to create perfect products and services, meeting the needs of customers. growing demand in domestic and international markets.',
  //     address:
  //         '175 - 177 Tran Huy Lieu, Ward 08, Phu Nhuan District, Ho Chi Minh City, Vietnam',
  //     employee: 499,
  //     follower: 12,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/ntrSkdcRVlCv0czL5gYAwJUBgZJIMdGQ_1691725136____a1d9acaf01ced0e610c824399293a2c5.png',
  //     link: 'https://www.sunvalue.vn/',
  //     type: 'Service',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'AN CARE SERVICES CO., LTD',
  //     aboutCompany:
  //         'As one of the newly established companies in the field of "Patient health care services", however, the company has made remarkable achievements in linking with hospitals and medical facilities to provide medical care services. provide health care services. With the motto of comprehensive health care for patients in the hospital, at home, our company recruits, trains and provides customers with employees with good moral character, clear resumes. Clearly, being professionally trained in care, mastering the professional process brings peace of mind to many families using patient care services. Experiencing initial difficulties, the company has gradually proved its capacity and developed strongly, has achieved many successes and is highly appreciated by partner companies.',
  //     address:
  //         'No. 22 Sunrise A, Manor 1 Street, The Manor Center Park, Nguyen Xien, Dai Kim, Hoang Mai, Hanoi',
  //     employee: 99,
  //     follower: 20,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-tnhh-dich-vu-an-care-60418d853b2d0.jpg',
  //     link: 'https://dichvuytetrongoiancare.com/',
  //     type: 'Business',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'Nail Cost',
  //     aboutCompany: 'Nails Cost, Inc',
  //     address:
  //         'Floor 3rd, 131-133 Nguyen Thi Nhung, Van Phuc City, Hiep Binh Phuoc, Thu Duc, Ho Chi Minh City',
  //     employee: 99,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/nail-cost-851c800d537d33f2791f2048dbada9cf-64ddef502ed51.jpg',
  //     link: 'https://www.nailcost.com/',
  //     type: 'Business',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'LENFUL GROUP JOINT STOCK COMPANY',
  //     aboutCompany:
  //         'Founded in August 2020 by CEO Cuong Milan, Lenful is a company specializing in providing solutions in the field of POD (Print on Demand). In the current social context, Dropshipping is one of the very effective business forms, suitable for everyone, in which Print on Demand is becoming more and more popular. indispensable services. If you are in need of a service and still have not found a suitable company, you can completely find our business, Lenful – POD Fulfillment Solutions. Imagine, you just need to focus on sales and marketing. Lenful will handle all the remaining stages: printing, shipping, order synchronization, clone design, real-time tracking, or even direct cs support with international buyers to optimize services and bring value and great experience for the buyer... We make it easier for you to sell to all the customers around the world. When using Lenful\'s services, you will enjoy many benefits such as: diversified products, competitive basecost, stable production and delivery time, easy to use system, 24 hour support team /7. With a strategic vision to make Lenful a leader in the field of POD fulfilment services, bringing customers the best services on the market today. We are constantly learning, improving and creating new opportunities for everyone in accordance with the motto "Speak less, do more - Service number 1". Lenful has a dynamic, creative and non-stop updating staff along with a management team with many years of experience in the field of Dropshipping, Print on Demand. We are committed to ensuring you get the best experience when using our services. With Lenful you are in good hands <3',
  //     address: 'No. 2 Alley 82 Dich Vong Hau, Cau Giay, Hanoi',
  //     employee: 99,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/kStTNp94jTYyMl9dlu7R2URLGippE6NU_1658281216____6a7cfab331b46bbb24f1b600a90de2a4.png',
  //     link: '',
  //     type: 'Business',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'VJS VIETNAM CO., LTD',
  //     aboutCompany:
  //         'VJS Vietnam was established and started business on June 10, 2016 with the initial name of Vn-Japan Camera Co., Ltd. With a business philosophy that puts understanding, enthusiasm and dedication first in all areas of activity, VJS aims at customers who have a desire to change and love technology with the motto: "The best for Your passion!” After years of working hard, persistently developing according to the initial orientation, the company has a system of 14 stores nationwide with about 60 - 120 young employees.',
  //     address: 'No. 22 Nguyen Thai Hoc, Ba Dinh, Hanoi',
  //     employee: 99,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-tnhh-vjs-viet-nam-61482a2038c80.jpg',
  //     link: 'https://vjshop.vn/',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'HAI DANG Culinary Joint Stock Company',
  //     aboutCompany:
  //         'Hai Dang Cuisine Joint Stock Company specializes in: SET-UP, RESTAURANTS resorts. Customers will be advised on the type and style of the restaurant; appropriate menus; Recruitment and training of professional kitchen staff and service staff. After that, we support customers to operate, put the model into stable operation. \nQUALITY FOOD SERVICES\nProviding school canteens, industrial kitchens, office meals and on demand;\nFOOD SERVICES SERIES\nDeveloping a chain of premium sandwich shops Branded Bread Street. With the slogan “Delicious & Healthy”, our premium sandwich product combining fruit juice and pure nut milk is loved in Hanoi, especially in the busy Old Quarter area.',
  //     address:
  //         '6th Floor - Kinh Do Building, No. 292 Tay Son, Trung Liet Ward, Dong Da District, Hanoi City, Vietnam',
  //     employee: 25,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/udGkADPUDRKatz2Gx0haeDErYL3Ej9B8_1653551196____b89191f60a6b4df4ebfd338432031cb4.png',
  //     link: 'https://banhmipho.vn/',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CHANNEL JOINT STOCK COMPANY 28 ENTERTAINMENT',
  //     aboutCompany:
  //         'Channel 28 Entertainment is a media and entertainment unit established in 2018, headquartered in Hanoi and Ho Chi Minh.\nWe focus on investment and development in the field of media and entertainment on social networks.',
  //     address:
  //         '4th floor, Luxury Park View Building, Duong Dinh Nghe, Cau Giay District, Hanoi City',
  //     employee: 499,
  //     follower: 100,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/hIsj1RqIEgcAPJ4G8BLv0G1XyljtrycY_1682501755____aa8ef616409327935c704d51d28bcb43.png',
  //     link: 'https://28group.vn',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'NANOFILM . TRADING SERVICE CO., LTD',
  //     aboutCompany:
  //         'Nanofilm Trading Service Co., Ltd is a unit specializing in distributing NANOX Insulation Film in Vietnam. Here, Nanofilm provides Vietnamese consumers with high-class anti-heat insulation films, produced based on leading technology lines, bringing people a perfect comfortable and safe quality of life. n In addition, NanoX focuses on the product lines of interior and auto accessories.\n CORE VALUES: \nGratitude\nHUMANITY\nDISTRIBUTION\nQUALITY\nCORPORATE CULTURE;\nALWAYS TEAM IS AN ANIMAL CHARACTERS\nINCOME IS THE VALUE MEASUREMENT OF EVERY EMPLOYEE',
  //     address:
  //         'No. 2, 34th Street, Van Phuc Urban Area, Hiep Binh Phuoc Ward, Thu Duc District, Ho Chi Minh City',
  //     employee: 24,
  //     follower: 10,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/2849xYM1lVWR4IbuqRHPeEf0KZwo5AZb_1661423221____2efcf9742ac94e4544af2e21e60f38a1.png',
  //     link: 'https://nanofilm.com.vn/',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'THIEN KHOI REAL ESTATE JOINT STOCK COMPANY',
  //     aboutCompany:
  //         'The leading Residential Real Estate Brokerage Company in Vietnam with a staff of ~1,500 well-trained and professional professionals.\nSuitable for all ages (the youngest is students, the oldest is the elderly) retired 74-75 years old).\nHOT REWARDS by Month, Quarter, Year and major holidays.\nEarnings: Minimum pocket commission of 35.5 million/ 1 deal – the highest in the market, OPPORTUNITY FOR BREAKING INCOME, average: 40, 50, 60, 90, …, 200 million,…/month.\nCommission is distributed as soon as the transaction is completed, no debt, no delay.\nActive time Working time, being the boss of the job, learning and developing yourself literally and figuratively.\nTrained completely for FREE according to the PRIVATE, UNIQUE and very PROFESSIONAL training curriculum of our company. The company, evaluated, commented fairly, promotion opportunities FAIR, transparent.\nParticipated in extra-curricular activities: Culture, sports, domestic and foreign travel of the Company.\nYes fully enjoy the regimes of holidays, New Year, filial piety, joy, maternity, sickness and disease according to the State\'s regulations.',
  //     address: '52 Truong Dinh, St, Dist. 3, Ho Chi Minh City',
  //     employee: 5000,
  //     follower: 52,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-co-phan-bat-dong-san-thien-khoi-634ccb1ed604a.jpg',
  //     link: 'http://bdsthienkhoi.vn/',
  //     type: 'Este',
  //   ),
  // ];

  //  final companies = [
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'ECR SOLUTIONS VIETNAM CO., LTD',
  //     aboutCompany:
  //         'ECR VIETNAM SOLUTION CO., LTD Main industry: Computer programming',
  //     address:
  //         'The Morning Star Building, 57 National Highway 13, Ward 26, Binh Thanh District, Ho Chi Minh City, Vietnam',
  //     employee: 500,
  //     follower: 59,
  //     image:
  //         'https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN002SWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--29a9ccea815d61dcacf0d95f6f4e013b151121cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFJc0FXa0NMQUU9IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--15c3f2f3e11927673ae52b71712c1f66a7a1b7bd/ECR_Logo_Stick.png',
  //     link:
  //         'https://hosocongty.vn/cong-ty-tnhh-giai-phap-ecr-viet-nam-com-1954617.htm',
  //     type: 'Tech',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'Công ty Cổ phần Voyager',
  //     aboutCompany:
  //         'VOYAGER INC. is a professional ‘offshore’ software development organization. To thrive on delivering challenging projects for a wide variety of customers, we use the latest technologies to develop software for business intelligence, ERP, relationship networks, GIS, risk management systems and application for mobile devices.Our vision and mission are not only to open, strengthen our business market in IT Software field but also to provide you a chance for your career path, to enrich your professional knowledge and commitment to build a friendly, energetic and enthusiastic working environment.',
  //     address:
  //         'Tòa nhà SBI, đường 3, Công viên Phần mềm Quang Trung, phường Tân Chánh Hiệp, Quận 12, Tp Hồ Chí Minh',
  //     employee: 99,
  //     follower: 12,
  //     image:
  //         'https://static.topcv.vn/company_logos/kCGQzQsYeKsN68QZtIVZhgB473TJedza_1656484998____8aa3a56ca51517b37d795d40b311bea7.jpg',
  //     link: 'https://voyager-hcm.com/',
  //     type: 'Tech',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'TRUNG TÂM TIỆC CƯỚI & HỘI NGHỊ MIPEC PALACE',
  //     aboutCompany:
  //         'Trung tâm Tiệc Cưới Hội Nghị MIPEC PALACE là đơn vị trực thuộc quản lý của CN Công ty Cổ phần Hóa Dầu Quân Đội tại Hà Nội (MIPEC). Đây là dự án về lĩnh vực Tiệc cưới & Sự kiện. Với sứ mệnh tạo nên một thương hiệu Nhà hàng Tiệc Cưới Hội Nghị chuyên nghiệp và thân thiện tại thủ đô Hà Nội, chúng tôi luôn nỗ lực, tận tâm để mang lại những giây phút lãng mạn, ấn tượng khó quên cho các cặp uyên ương và cả khách mời tham dự.',
  //     address: '229 Tây Sơn, Đống Đa, Tp. Hà Nội',
  //     employee: 499,
  //     follower: 59,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/B3liLb6TxRmh8RZ0xG1VIfJwAKxjwQrq_1691825152____b1eb605a0878ca07febd8bda5e75e76b.png',
  //     link: 'http://mipecpalace.vn',
  //     type: 'Service',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY TNHH TẬP ĐOÀN THẨM ĐỊNH GIÁ SUNVALUE',
  //     aboutCompany:
  //         'Thương Hiệu SunValue tiên phong ứng dụng công nghệ trong thẩm định giá, với hệ thống hơn 40 chi nhánh, PGD toàn quốc, 2 văn phòng đại diện tại Mỹ, Úc,…Chúng tôi mang đến cho khách hàng các dịch vụ thẩm định giá bất động sản chuyên nghiệp bao gồm: SunReal - Thẩm định giá Bất Động Sản, SunInvest - Thẩm định giá dự án đầu tư, SunAsset - Thẩm định xác định giá trị doanh nghiệp, SunMovables - Thẩm định giá Động Sản, SunResources - Thầm định giá Tài Nguyên Thiên Nhiên,..nhằm phục vụ mục đích mua bán, chuyển nhượng, vay vốn, đầu tư, liên doanh, cổ phần hóa, M&A, tòa án, chứng minh tài chính du học định cư, xử lí nợ,…góp phần vào sự phát triển thịnh vượng của quý khách hàng, quý doanh nghiệp. Trong xu thế hội nhập kinh tế quốc tế hiện nay, các ngành kinh tế của Việt Nam đang đứng trước những vận hội và thách thức to lớn, đòi hỏi các tập đoàn kinh tế, các doanh nghiệp ngoài việc nâng cao chất lượng sản phẩm/dịch vụ bằng việc không ngừng cải tiến kỹ thuật và ứng dụng công nghệ thông tin mà còn tăng cường các hoạt động liên doanh liên kết với các đối tác tiềm năng nhằm tạo ra các sản phẩm và dịch vụ hoàn hảo, đáp ứng nhu cầu ngày càng cao của thị trường trong nước và quốc tế.',
  //     address:
  //         '175 - 177 Trần Huy Liệu, Phường 08, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam',
  //     employee: 499,
  //     follower: 12,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/ntrSkdcRVlCv0czL5gYAwJUBgZJIMdGQ_1691725136____a1d9acaf01ced0e610c824399293a2c5.png',
  //     link: 'https://www.sunvalue.vn/',
  //     type: 'Service',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY TNHH DỊCH VỤ AN CARE',
  //     aboutCompany:
  //         'Là một trong những công ty mới thành lập trong lĩnh vực “Dịch vụ chăm sóc sức khỏe bệnh nhân”, tuy nhiên công ty đã có những thành tựu đáng kể trong việc liên kết với các bệnh viện và các cơ sở y tế để cung cấp dịch vụ chăm sóc sức khỏe. Với phương châm chăm sóc sức khỏe toàn diện cho bệnh nhân trong bệnh viện, tại nhà, công ty chúng tôi tuyển dụng, đào tạo và cung cấp đến quý khách hàng những nhân viên có tư cách đạo đức tốt, hồ sơ lý lịch rõ ràng, được đào tạo chuyên môn chăm sóc, nắm vững quy trình nghiệp vụ đem đến sự an tâm cho nhiều gia đình sử dụng dịch vụ chăm sóc người bệnh. Trải qua những khó khăn ban đầu, công ty đã từng bước chứng tỏ được năng lực của mình và phát triển mạnh mẽ, đã gặt hái được nhiều thành công và được các công ty đối tác đánh giá cao.',
  //     address:
  //         'Số 22 Sunrise A, Manor 1 Street, The Manor Center Park, Nguyễn Xiển, Đại Kim, Hoàng Mai, Hà Nội',
  //     employee: 99,
  //     follower: 20,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-tnhh-dich-vu-an-care-60418d853b2d0.jpg',
  //     link: 'https://dichvuytetrongoiancare.com/',
  //     type: 'Business',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'Nail Cost',
  //     aboutCompany: 'Nails Cost, Inc',
  //     address:
  //         'Floor 3rd, 131-133 Nguyen Thi Nhung, Van Phuc City, Hiep Binh Phuoc, Thu Duc, Ho Chi Minh City',
  //     employee: 99,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/nail-cost-851c800d537d33f2791f2048dbada9cf-64ddef502ed51.jpg',
  //     link: 'https://www.nailcost.com/',
  //     type: 'Business',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY CỔ PHẦN TẬP ĐOÀN LENFUL',
  //     aboutCompany:
  //         'Được thành lập vào 08/2020 bởi CEO Cường Milan, Lenful là công ty chuyên cung cấp các giải pháp trong lĩnh vực POD ( Print on Demand). Trong bối cảnh xã hội hiện nay thì Dropshipping là một trong số những hình thức kinh doanh rất hiệu quả, phù hợp với tất cả mọi người, trong đó Print on Demand (in theo yêu cầu) đang ngày càng phổ biến rộng rãi trở thành dịch vụ cần thiết không thể thiếu. Nếu như bạn đang có nhu cầu sử dụng dịch vụ mà vẫn chưa tìm được công ty nào thích hợp thì bạn hoàn toàn có thể tìm đến với doanh nghiệp chúng tôi, Lenful – POD Fulfillment Solutions. Hãy tưởng tượng, bạn chỉ cần tập trung vào bán hàng và tiếp thị. Lenful sẽ xử lý tất cả các công đoạn còn lại: in ấn, vận chuyển, đồng bộ hóa đơn hàng, clone design, tracking realtime, hay thậm chí hỗ trợ cs trực tiếp với buyer quốc tế nhằm tối ưu dịch vụ, mang lại giá trị và những trải nghiệm tuyệt vời cho người mua ... Chúng tôi hỗ trợ bạn bán hàng dễ dàng hơn tới tất cả khách hàng trên thế giới. Khi sử dụng dịch vụ của Lenful bạn sẽ được hưởng rất nhiều lợi ích như: Sản phẩm đa dạng, basecost cạnh tranh, thời gian sản xuất và giao hàng luôn luôn ổn định, hệ thống sử dụng dễ dàng, đội ngũ hỗ trợ 24/7. Với tầm nhìn chiến lược đưa Lenful trở thành công ty dẫn đầu về mảng dịch vụ POD fulfilment, mang lại cho khách hàng những dịch vụ tốt nhất trên thị trường hiện nay. Chúng tôi không ngừng học hỏi, cải thiện và tạo ra những cơ hội mới cho tất cả mọi người theo đúng phương châm “Nói ít- Làm nhiều – Service số 1”. Lenful có đội ngũ nhân viên năng động, sáng tạo cập nhật không ngừng nghỉ cùng với ban lãnh đạo có kinh nghiệm nhiều năm trong lĩnh vực Dropshipping, Print on Demand. Chúng tôi cam kết đảm bảo bạn sẽ có được những trải nghiệm tuyệt vời nhất khi sử dụng các dịch vụ của chúng tôi. With Lenful you are in good hands <3',
  //     address: 'Số 2 Ngõ 82 Dịch Vọng Hậu, Cầu Giấy, Hà Nội',
  //     employee: 99,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/kStTNp94jTYyMl9dlu7R2URLGippE6NU_1658281216____6a7cfab331b46bbb24f1b600a90de2a4.png',
  //     link: '',
  //     type: 'Business',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY TNHH VJS VIỆT NAM',
  //     aboutCompany:
  //         'VJS Việt Nam được thành lập và bắt đầu kinh doanh ngày 10/06/2016 với tên ban đầu là Công ty TNHH Vn-Japan Camera. Với triết lý kinh doanh đặt sự thấu hiểu, nhiệt huyết và tận tình lên hàng đầu trong mọi lĩnh vực hoạt động, VJS hướng đến những khách hàng có khát khao thay đổi và yêu thích công nghệ với phương châm: “Điều tốt nhất cho đam mê của bạn!” Sau những năm tháng hoạt động nỗ lực, kiên trì phát triển theo định hướng ban đầu đề ra công ty đã có được hệ thống 14 cửa hàng trên toàn quốc với khoảng 60 - 120 nhân sự trẻ.',
  //     address: 'Số 22 Nguyễn Thái Học, Ba Đình, Hà Nội',
  //     employee: 99,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-tnhh-vjs-viet-nam-61482a2038c80.jpg',
  //     link: 'https://vjshop.vn/',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY CỔ PHẦN ẨM THỰC HẢI ĐĂNG',
  //     aboutCompany:
  //         'Công ty Cổ phần Ẩm Thực Hải Đăng hoạt động chuyên về: SET-UP , TƯ VẤN NHÀ HÀNG .Chúng tôi cung cấp giải pháp toàn diện về tư vấn, set-up và cung ứng nhân sự cho ngành nhà hàng, khách sạn và các khu resort. Khách hàng sẽ được tư vấn loại hình, phong cách nhà hàng; lên thực đơn phù hợp; tuyển dụng, đào tạo đội ngũ nhân viên bếp, nhân viên phục vụ chuyên nghiệp. Sau đó, chúng tôi hỗ trợ khách hàng vận hành, đưa mô hình đi vào hoạt động ổn định. \nDỊCH VỤ SUẤT ĂN CHẤT LƯỢNG\nCung cấp dịch vụ căng tin trường học, bếp ăn công nghiệp, suất ăn văn phòng và theo yêu cầu;\nCHUỖI DỊCH VỤ ĂN UỐNG\nPhát triển hệ thống chuỗi cửa hàng bánh mì kẹp cao cấp mang thương hiệu Bánh mì Phố. Với slogan “Ngon&Lành”, sản phẩm bánh mì kẹp cao cấp kết hợp nước trái cây và sữa hạt nguyên chất của chúng tôi được yêu thích tại Hà Nội, đặc biệt là khu vực phố cổ sầm uất.',
  //     address:
  //         'Tầng 6 - Tòa nhà Kinh Đô, số 292 Tây Sơn, Phường Trung Liệt, Quận Đống Đa, Thành phố Hà Nội, Việt Nam',
  //     employee: 25,
  //     follower: 25,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/udGkADPUDRKatz2Gx0haeDErYL3Ej9B8_1653551196____b89191f60a6b4df4ebfd338432031cb4.png',
  //     link: 'https://banhmipho.vn/',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY CỔ PHẦN KÊNH 28 ENTERTAINMENT',
  //     aboutCompany:
  //         'Kênh 28 Entertainment là đơn vị truyền thông và giải trí được thành lập năm 2018, đặt trụ sở tại Hà Nội và Hồ Chí Minh.\nChúng tôi tập trung đầu tư phát triển trong lĩnh vực truyền thông và giải trí trên mạng xã hội.',
  //     address:
  //         'Tầng 4, Toà nhà Luxury Park View, Dương Đình Nghệ, Quận Cầu Giấy, Thành phố Hà Nội',
  //     employee: 499,
  //     follower: 100,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/hIsj1RqIEgcAPJ4G8BLv0G1XyljtrycY_1682501755____aa8ef616409327935c704d51d28bcb43.png',
  //     link: 'https://28group.vn',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ NANOFILM',
  //     aboutCompany:
  //         'Công ty TNHH TMDV Nanofilm là đơn vị chuyên phân phối Phim cách nhiệt NANOX tại Việt Nam. Tại đây, Nanofilm cung cấp đến người tiêu dùng Việt các dòng phim cách nhiệt chống nóng đẳng cấp, sản xuất dựa trên các dây chuyền công nghệ hàng đầu, mang đến cho mọi người chất lượng sống thoải mái và an toàn hoàn hảo.\n Bên cạnh đó, NanoX hướng tới các dòng sản phẩm nội thất và phụ kiện ô tô.\n GIÁ TRỊ CỐT LÕI: \nLÒNG BIẾT ƠN\nNHÂN VĂN\nTẬN TÂM\nCHẤT LƯỢNG\nVĂN HÓA DOANH NGHIỆP;\nLUÔN LUÔN HỌC TẬP LÀ KIM CHỈ NAM\nTHU NHẬP LÀ THƯỚC ĐO GIÁ TRỊ CỦA MỖI NHÂN SỰ',
  //     address:
  //         'số 2 đường 34, KĐT Vạn Phúc, phường Hiệp Bình Phước, Quận Thủ Đức, TP HCM',
  //     employee: 24,
  //     follower: 10,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/2849xYM1lVWR4IbuqRHPeEf0KZwo5AZb_1661423221____2efcf9742ac94e4544af2e21e60f38a1.png',
  //     link: 'https://nanofilm.com.vn/',
  //     type: 'Media',
  //   ),
  //   CompanyModel(
  //     id: AppFormat.generateRandomString(),
  //     displayName: 'CÔNG TY CỔ PHẦN BẤT ĐỘNG SẢN THIÊN KHÔI',
  //     aboutCompany:
  //         'Công ty Môi giới Bất động sản Thổ cư hàng đầu Việt Nam với nhân sự ~1.500 chuyên viên được đào tạo bài bản, chuyên nghiệp.\nPhù hợp với mọi lứa tuổi (trẻ nhất là các bạn sinh viên, cao tuổi nhất là các bác về hưu 74-75 tuổi).\nChế độ KHEN THƯỞNG HẤP DẪN theo Tháng, Quý, Năm và các dịp lễ lớn.\nThu nhập: Hoa hồng về túi tối thiểu 35.5 triệu/ 1 thương vụ – cao nhất thị trường, CƠ HỘI ĐỘT PHÁ THU NHẬP, trung bình: 40, 50, 60, 90, …, 200triệu,…/tháng.\nHoa hồng được chia ngay khi giao dịch hoàn tất, không nợ, không trì hoãn.\nĐược chủ động thời gian làm việc, là ông chủ của công việc, được học và được phát triển bản thân theo cả nghĩa đen và nghĩa bóng.\nĐược đào tạo hoàn toàn MIỄN PHÍ theo giáo án đào tạo RIÊNG BIỆT, DUY NHẤT và rất CHUYÊN NGHIỆP của Công ty, được đánh giá, nhận xét công minh, cơ hội thăng tiến CÔNG BẰNG, MINH BẠCH.\nĐược tham gia các hoạt động ngoại khóa: Văn nghệ, thể thao, du lịch trong và ngoài nước của Công ty.\nĐược hưởng đầy đủ các chế độ nghỉ lễ, Tết, hiếu, hỉ, thai sản, ốm đau, bệnh tật theo Quy định của Nhà nước.',
  //     address: '52 Trương Định, St, Dist. 3, Thành phố Hồ Chí Minh',
  //     employee: 5000,
  //     follower: 52,
  //     image:
  //         'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/cong-ty-co-phan-bat-dong-san-thien-khoi-634ccb1ed604a.jpg',
  //     link: 'http://bdsthienkhoi.vn/',
  //     type: 'Este',
  //   ),
  // ];

  FutureOr<void> _onInitUserRequested(
      InitUserRequested event, Emitter<AuthState> emit) async {
    await serviceLocator<ProfileUsecase>()
        .updateUserToFirebase(event.userModel);

    await serviceLocator<UserCacheService>().saveUser(event.userModel);
    print('object');
    emit(state.copyWith(user: event.userModel));
  }
}

// final jobCategory = [
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Business',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Technology',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Post and Telecommunication',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Real estate',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Travel',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Media',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Education',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Graphic design',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Service',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Logistics',
//   ),
//   JobCategoryModel(
//     id: AppFormat.generateRandomString(),
//     name: 'Other',
//   )
// ];

// final notification = [
//   NotificationModel(
//       id: AppFormat.generateRandomString(),
//       title: 'Employers have posted new jobs',
//       body:
//           'Nail Cost Company has just posted a new recruitment advertisement. Come see now!',
//       companyId: 'pePB3PfwMzgr7aQBc6Le',
//       companyName: 'Nail Cost',
//       imageCompany:
//           'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/udGkADPUDRKatz2Gx0haeDErYL3Ej9B8_1653551196____b89191f60a6b4df4ebfd338432031cb4.png',
//       postId: '',
//       postName: '',
//       sendDateTime: DateTime.now(),
//       status: true,
//       type: 'new-post',
//       userId: '110290761002318304215',
//       userName: 'Hieu Nguyen'),
//   NotificationModel(
//       id: AppFormat.generateRandomString(),
//       title: 'Employers have posted new jobs',
//       body:
//           'CHANNEL JOINT STOCK COMPANY 28 ENTERTAINMENT Company has just posted a new recruitment advertisement. Come see now!',
//       companyId: '0WCi71NVUdpaqMHn2aTq',
//       companyName: 'CHANNEL JOINT STOCK COMPANY 28 ENTERTAINMENT',
//       imageCompany:
//           'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/hIsj1RqIEgcAPJ4G8BLv0G1XyljtrycY_1682501755____aa8ef616409327935c704d51d28bcb43.png',
//       postId: '',
//       postName: '',
//       sendDateTime: DateTime.now(),
//       status: true,
//       type: 'new-post',
//       userId: '110290761002318304215',
//       userName: 'Hieu Nguyen'),
//   NotificationModel(
//       id: AppFormat.generateRandomString(),
//       title: 'Employers have posted new jobs',
//       body:
//           'SUNVALUE ASSESSMENT GROUP CO., LTD Company has just posted a new recruitment advertisement. Come see now!',
//       companyId: '9lY3PVSEJ0Z5ZhE5GaXy',
//       companyName: 'SUNVALUE ASSESSMENT GROUP CO., LTD',
//       imageCompany:
//           'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/ntrSkdcRVlCv0czL5gYAwJUBgZJIMdGQ_1691725136____a1d9acaf01ced0e610c824399293a2c5.png',
//       postId: '',
//       postName: '',
//       sendDateTime: DateTime.now(),
//       status: true,
//       type: 'new-post',
//       userId: '110290761002318304215',
//       userName: 'Hieu Nguyen'),
//   NotificationModel(
//       id: AppFormat.generateRandomString(),
//       title: 'Employers have posted new jobs',
//       body:
//           'WEDDING & CONFERENCE CENTER MIPEC PALACE Company has just posted a new recruitment advertisement. Come see now!',
//       companyId: 'VioqqRWsuyjtsWI6gfB8',
//       companyName: 'WEDDING & CONFERENCE CENTER MIPEC PALACE',
//       postId: '',
//       postName: '',
//       sendDateTime: DateTime.now(),
//       status: true,
//       type: 'new-post',
//       imageCompany:
//           'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/B3liLb6TxRmh8RZ0xG1VIfJwAKxjwQrq_1691825152____b1eb605a0878ca07febd8bda5e75e76b.png',
//       userId: '110290761002318304215',
//       userName: 'Hieu Nguyen'),
// ];

final job = [
  JobsModel(
    id: AppFormat.generateRandomString(),
    companyId: 'lZ2eN5iMbhHy9MyRGZmJ',
    companyImage:
        'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/2849xYM1lVWR4IbuqRHPeEf0KZwo5AZb_1661423221____2efcf9742ac94e4544af2e21e60f38a1.png',
    companyName: 'NANOFILM . TRADING SERVICE CO., LTD',
    companyLocation:
        'No. 2, 34th Street, Van Phuc Urban Area, Hiep Binh Phuoc Ward, Thu Duc District, Ho Chi Minh City',
    benefit:
        '''Income: Fixed salary + KPI bonus > 20 million (discussed in more detail at the interview)
          Clear promotion path, salary increase review once a year.
          Get trained, improve your expertise, develop yourself...
          Enjoy full insurance benefits, days off, and holidays according to regulations.
          Other welfare regimes according to company policy.
          Working conditions
          Working hours: Monday - Friday from 8:00 - 17:00 (Lunch break 11:30 - 13:00) + Saturday morning
          Beautiful office (full amenities), friendly working environment.''',
    category: 'aZ3TJiJL2i3eM3IR00xD',
    description:
        '''Come up with ideas, participate in planning and implementing marketing activities.
Research the market, customers, and competitors to build campaigns and marketing strategies.
Manage, monitor, evaluate, measure and report the effectiveness of marketing activities.
Plan and develop content for Website, Fanpage, Tiktok channels...
Create content for campaigns, media messages - advertising on multi-channel.''',
    startDate: DateTime.now(),
    experienceYear: '1 year',
    gender: 2,
    location: 'Ho Chi Minh',
    quantity: '1',
    requirement: '''Experience: 1 year or more.
Be responsible and dedicated to work.
Have management and organizational skills, able to withstand high work pressure.
University graduate from directly related majors, preferably in Marketing.
Have extensive knowledge and experience in marketing methods, advertising, PR, communications, branding and implementing campaigns on Google, Facebook, Tiktok...''',
    salary: '400\$ - 700\$',
    status: true,
    title: 'Marketing Executive (HCM) - Specialist',
    type: 'Full-time',
    endDate: DateTime.now().add(const Duration(days: 30)),
  ),
  JobsModel(
    id: AppFormat.generateRandomString(),
    companyId: '0WCi71NVUdpaqMHn2aTq',
    companyImage:
        'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/hIsj1RqIEgcAPJ4G8BLv0G1XyljtrycY_1682501755____aa8ef616409327935c704d51d28bcb43.png',
    companyName: 'CHANNEL JOINT STOCK COMPANY 28 ENTERTAINMENT',
    companyLocation:
        '4th floor, Luxury Park View Building, Duong Dinh Nghe, Cau Giay District, Hanoi City',
    benefit: '''Dynamic, creative, youthful working environment.
Hard salary 7 - 9 million + Bonus + Allowances
There are clear opportunities for advancement, testing, learning and personal development.
Enjoy full benefits according to Vietnam Labor Law''',
    category: 'aZ3TJiJL2i3eM3IR00xD',
    description:
        '''Come up with script ideas, be in charge of writing content for Aesthetics-related content, based on brand requirements or according to the project's content orientation.
Research trends, create and apply trends in video content production
Plan video scripts by week and month.
Proactively grasp trends and user needs on social networks to create quality, attractive articles and video content.
Review & Report weekly/monthly to Direct Superiors''',
    startDate: DateTime.now(),
    experienceYear: '1 year',
    gender: 2,
    location: 'Ha Noi',
    quantity: '2',
    requirement:
        '''More than 1 year of experience, experience writing content for Groups, Facebook fanpages.
Understand the Beauty Industry & grasp the latest market trends.
Ability to search and apply insights from the brand's initial input to develop article ideas. High creativity and persistence.
Proficient in using working software: Lark, Google, etc....
Have knowledge of design and color to work with the Media team
Ability to work independently & in groups, coordinating with other departments in the company.''',
    salary: 'Over 300\$',
    status: true,
    title: 'Editor of Aesthetics and Beauty Section',
    type: 'Full-time',
    endDate: DateTime.now().add(const Duration(days: 50)),
  ),
  JobsModel(
    id: AppFormat.generateRandomString(),
    companyId: '0WCi71NVUdpaqMHn2aTq',
    companyImage:
        'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/hIsj1RqIEgcAPJ4G8BLv0G1XyljtrycY_1682501755____aa8ef616409327935c704d51d28bcb43.png',
    companyName: 'CHANNEL JOINT STOCK COMPANY 28 ENTERTAINMENT',
    companyLocation:
        '4th floor, Luxury Park View Building, Duong Dinh Nghe, Cau Giay District, Hanoi City',
    benefit:
        '''Income: Hard salary 6 - 8 million + % commission + Bonus, income from 10-25 million
Dynamic and friendly working environment
Opportunities for development in the fields of advertising, media and entertainment
Pay full social insurance
Other bonus regimes according to company regulations''',
    category: 'aZ3TJiJL2i3eM3IR00xD',
    description:
        '''Proactively search, exploit information, evaluate customer needs and advise customers on the company's products/services to bring the best solutions to customers.
Plan and implement communication and advertising campaigns according to customer needs
Responsible for maintaining relationships with potential customers and businesses.
Create personal business plans to ensure completion of assigned KPIs.
Comply with company working procedures and legal requirements according to law.
Perform other tasks when assigned by superiors''',
    startDate: DateTime.now(),
    experienceYear: '1 year',
    gender: 0,
    location: 'Ha Noi',
    quantity: '5',
    requirement:
        '''Have at least 1 year of sales experience in the social media advertising industry
Having experience working in agency companies is an advantage
Male/Female graduated from University/College with majors in marketing, commerce, economics, finance...
Have good presentation, negotiation and communication skills
Proficient in office computer skills
Able to work independently
Hardworking, industrious, with a high sense of responsibility towards work''',
    salary: '6 - 8 million',
    status: true,
    title: 'Sales Officer [Hanoi] - Income 10-25 Million',
    type: 'Full-time',
    endDate: DateTime.now().add(const Duration(days: 39)),
  ),
  JobsModel(
    id: AppFormat.generateRandomString(),
    companyId: '0WCi71NVUdpaqMHn2aTq',
    companyImage:
        'https://cdn-new.topcv.vn/unsafe/140x/filters:format(webp)/https://static.topcv.vn/company_logos/hIsj1RqIEgcAPJ4G8BLv0G1XyljtrycY_1682501755____aa8ef616409327935c704d51d28bcb43.png',
    companyName: 'CHANNEL JOINT STOCK COMPANY 28 ENTERTAINMENT',
    companyLocation:
        '4th floor, Luxury Park View Building, Duong Dinh Nghe, Cau Giay District, Hanoi City',
    benefit: '''Dynamic, creative, youthful working environment.
Fixed salary + Bonus + Allowances
Dynamic and friendly working environment
Opportunities for development in the fields of advertising, media and entertainment
Pay full social insurance
Other bonus regimes according to company regulations''',
    category: 'aZ3TJiJL2i3eM3IR00xD',
    description:
        '''Search and synthesize daily hot news at home and abroad about young people from many sources such as newspapers, electronic news sites, social networks, forums,...
Producing and synthesizing news, entertainment content, topics suitable for young people's lives, trends, trends, etc.
Coordinate with page editors to complete tasks.''',
    startDate: DateTime.now(),
    experienceYear: 'Under 1 year',
    gender: 2,
    location: 'Ha Noi',
    quantity: '5',
    requirement:
        '''Those who have graduated with a major in Journalism can work full-time at the company.
Priority is given to candidates who have worked as fanpage admins about news, entertainment...
Ability to catch trends, good creative thinking, love writing, and social networks.
Sensitive to hot news, daily developments in the fields of: School, Life, Society, Entertainment, ..
Have Social knowledge, look for information on Social, often hang out on forums and always update news..
Good writing ability, diverse and flexible languages.
Use basic Photoshop.''',
    salary: '8 - 10 million',
    status: true,
    title: 'Fanpage Admin (Income From 8 Million)',
    type: 'Full-time',
    endDate: DateTime.now().add(const Duration(days: 36)),
  ),
  JobsModel(
    id: AppFormat.generateRandomString(),
    companyId: 'SepLV6cRtRsxrxqOsnkl',
    companyImage:
        'https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBN002SWc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--29a9ccea815d61dcacf0d95f6f4e013b151121cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFJc0FXa0NMQUU9IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--15c3f2f3e11927673ae52b71712c1f66a7a1b7bd/ECR_Logo_Stick.png',
    companyName: 'ECR SOLUTIONS VIETNAM CO., LTD',
    companyLocation:
        'The Morning Star Building, 57 National Highway 13, Ward 26, Binh Thanh District, Ho Chi Minh City, Vietnam',
    benefit: '''Friendly and comfortable working environment
Opportunity to work directly with foreign customers.
Opportunity to learn new technologies
Team building & company trips at least once a year
Premium healthcare insurance & Full-labor insurance (social, health, unemployed insurances)
Bonuses at national Holidays as well as 13th & 14th month bonuses
12 days paid leave per year
Working Hours: 9:00 AM – 6:30 PM from Monday to Friday.
Competitive salary''',
    category: 'MmStx33B4bDPbcQxqaJX',
    description:
        '''Reading & understanding project specifications, analyzing requirements.
Producing fully functional applications & writing clean code
Troubleshooting technical issues & debugging to optimize performance
Supporting the entire application lifecycle (concept, design, test, release and support)
Focusing to user interfaces as well as user experience
Working with tester to ensure deliveries to meet expected quality.
Stay up-to-date with new technology trends''',
    startDate: DateTime.now(),
    experienceYear: '1 year',
    gender: 2,
    location: 'Ho Chi Minh',
    quantity: '3',
    requirement: '''Proven work experience as a Mobile developer
Demonstrable portfolio of released applications on the App store or the Android market
Experience in Dart language & Flutter Framework is required
Knowledge of languages like Swift (iOS) and Java (Android) is a major plus
Experience with third-party libraries and APIs
Familiarity with OOP design principles
Excellent analytical skills with a good problem-solving attitude
Ability to perform in a team environment
BSc degree in Computer Science or relevant field
Excellent English verbal and written communication skills.''',
    salary: 'Up to 20 million',
    status: true,
    title: 'Flutter Developer',
    type: 'Full-time',
    endDate: DateTime.now().add(const Duration(days: 70)),
  ),
];
