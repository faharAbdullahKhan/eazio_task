import 'package:eazio_task/screens/bar_graph/bar_graph.dart';
import 'package:eazio_task/utils/colors.dart';
import 'package:eazio_task/widgets/big_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  List<double> weeklySummary = [80.40, 20.50, 30.24, 40.50, 50.20, 60.99, 90.10];


  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/eazio_logo.svg"),
            Spacer(
              flex: 4,
            ),
            SvgPicture.asset("assets/notification_icon.svg"),
            Spacer(),
            SvgPicture.asset("assets/messageIcon.svg"),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0.w),
            child: SvgPicture.asset("assets/drawer_icon.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: "Organization Insights.",
                fontWeight: FontWeight.w600,
                color: darkGrey,
                size: 24.sp,
              ),
              SizedBox(
                height: 6.h,
              ),
              BigText(
                text: "Track Your Organization Stats Insights",
                fontWeight: FontWeight.w400,
                color: lightGrey,
                size: 16.sp,
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: containerBorderGreyColor,
                    ),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: fontGreyColor,
                      size: 20.sp,
                    ),
                    BigText(
                      text: "manage Widgets",
                      size: 14.sp,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Divider(
                color: dividerColor,
                thickness: 1.5,
              ),
              SizedBox(
                height: 12.h,
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage("assets/BG-Pattern.png")),
                        color: cardColor,
                        borderRadius: BorderRadius.circular(18.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(
                                    text: "Welcome Back, John!",
                                    fontWeight: FontWeight.w700,
                                    color: cardTextWhiteColor,
                                    size: 20.sp,
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  BigText(
                                    text: "Take A Look at Our Weekly Reports.",
                                    fontWeight: FontWeight.w400,
                                    color: cardTextWhiteColor,
                                    size: 12.sp,
                                  )
                                ],
                              ),
                              SvgPicture.asset("assets/open-icon.svg")
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Divider(
                          color: cardDividerColor,
                          thickness: 1.5,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: BigText(
                            text: "Average Late & Overtime",
                            fontWeight: FontWeight.w700,
                            color: cardTextWhiteColor,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: Divider(
                            color: cardDividerColor,
                            thickness: 1.5,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      BigText(
                                        text: "25",
                                        color: cardTextWhiteColor,
                                        size: 24.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BigText(
                                        text: "Min",
                                        color: cardTextWhiteColor,
                                        size: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  BigText(
                                    text: "Avg. Lateness",
                                    size: 12.sp,
                                    color: cardTextWhiteColor,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        border: Border.all(
                                            color: containerBorderGreyColor),
                                        borderRadius: BorderRadius.circular(9.r)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/downarrow.svg",
                                          height: 12.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        BigText(
                                          text: "15%",
                                          color: redColor,
                                          size: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(
                                flex: 2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      BigText(
                                        text: "5",
                                        color: cardTextWhiteColor,
                                        size: 24.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BigText(
                                        text: "Hr",
                                        color: cardTextWhiteColor,
                                        size: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BigText(
                                        text: "15",
                                        color: cardTextWhiteColor,
                                        size: 24.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      BigText(
                                        text: "Min",
                                        color: cardTextWhiteColor,
                                        size: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  BigText(
                                    text: "Avg. Overtime",
                                    size: 12.sp,
                                    color: cardTextWhiteColor,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        border: Border.all(
                                            color: containerBorderGreyColor),
                                        borderRadius: BorderRadius.circular(9.r)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/up.svg",
                                          height: 12.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        BigText(
                                          text: "15%",
                                          color: greenColor,
                                          size: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: BigText(
                            text: "Payroll Finance",
                            fontWeight: FontWeight.w700,
                            color: cardTextWhiteColor,
                            size: 20.sp,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: Divider(
                            color: cardDividerColor,
                            thickness: 1.5,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.4,
                                    child: BigText(
                                      text: "AED 43.20K",
                                      color: cardTextWhiteColor,
                                      size: 24.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  BigText(
                                    text: "Total Processed",
                                    size: 12.sp,
                                    color: cardTextWhiteColor,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        border: Border.all(
                                            color: containerBorderGreyColor),
                                        borderRadius: BorderRadius.circular(9.r)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/downarrow.svg",
                                          height: 12.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        BigText(
                                          text: "15%",
                                          color: redColor,
                                          size: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(
                                flex: 2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: BigText(
                                      text: "AED 105.40K",
                                      color: cardTextWhiteColor,
                                      overflow: TextOverflow.ellipsis,
                                      size: 24.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  BigText(
                                    text: "Avg. Overtime",
                                    size: 12.sp,
                                    overflow: TextOverflow.ellipsis,
                                    color: cardTextWhiteColor,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    decoration: BoxDecoration(
                                        color: whiteColor,
                                        border: Border.all(
                                            color: containerBorderGreyColor),
                                        borderRadius: BorderRadius.circular(9.r)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/up.svg",
                                          height: 12.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        BigText(
                                          text: "15%",
                                          color: greenColor,
                                          size: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                // width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BigText(
                                      text: "Activity",
                                      fontWeight: FontWeight.w700,
                                      color: cardTextWhiteColor,
                                      size: 20.sp,
                                    ),

                                    Divider(
                                      color: cardDividerColor,
                                      thickness: 1.5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          BigText(
                                            text: "22",
                                            color: cardTextWhiteColor,
                                            overflow: TextOverflow.ellipsis,
                                            size: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          SizedBox(height: 5.h,),
                                          BigText(
                                            text: "Avg.",
                                            size: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: cardTextWhiteColor,
                                          ),
                                          BigText(
                                            text: "Leaves",
                                            size: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: cardTextWhiteColor,
                                          ),

                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          BigText(
                                            text: "70",
                                            color: cardTextWhiteColor,
                                            overflow: TextOverflow.ellipsis,
                                            size: 24.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          SizedBox(height: 5.h,),
                                          BigText(
                                            text: "Avg.",
                                            size: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: cardTextWhiteColor,
                                          ),
                                          BigText(
                                            text: "Attendance",
                                            size: 12.sp,
                                            overflow: TextOverflow.ellipsis,
                                            color: cardTextWhiteColor,
                                          ),

                                        ],
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.w,),
                              Expanded(
                                // width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BigText(
                                      text: "Head Count",
                                      fontWeight: FontWeight.w700,
                                      color: cardTextWhiteColor,
                                      size: 20.sp,
                                    ),

                                    Divider(
                                      color: cardDividerColor,
                                      thickness: 1.5,
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            BigText(
                                              text: "1283",
                                              color: cardTextWhiteColor,
                                              overflow: TextOverflow.ellipsis,
                                              size: 24.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            SizedBox(height: 5.h,),
                                            BigText(
                                              text: "Total",
                                              size: 12.sp,
                                              overflow: TextOverflow.ellipsis,
                                              color: cardTextWhiteColor,
                                            ),
                                            BigText(
                                              text: "Employees",
                                              size: 12.sp,
                                              overflow: TextOverflow.ellipsis,
                                              color: cardTextWhiteColor,
                                            ),

                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            BigText(
                                              text: "250",
                                              color: cardTextWhiteColor,
                                              overflow: TextOverflow.ellipsis,
                                              size: 24.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            SizedBox(height: 5.h,),
                                            BigText(
                                              text: "Total",
                                              size: 12.sp,
                                              overflow: TextOverflow.ellipsis,
                                              color: cardTextWhiteColor,
                                            ),
                                            BigText(
                                              text: "Internship",
                                              size: 12.sp,
                                              overflow: TextOverflow.ellipsis,
                                              color: cardTextWhiteColor,
                                            ),

                                          ],
                                        ),
                                      ],),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h,)
                      ],
                    ),
                  ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: SvgPicture.asset("assets/card_background.svg"))
                ],
              ),
              SizedBox(
                height: 30.h,
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage("assets/BG-Pattern.png")),
                  border: Border.all(color: containerBorderGreyColor, width: 3.w),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(18.r)),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                      child: BigText(
                        text: "Average Late & Overtime",
                        fontWeight: FontWeight.w700,
                        color: darkGrey,
                        size: 20.sp,
                      ),
                    ),
                    SvgPicture.asset("assets/menu_dots.svg")

                  ],),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: containerBorderGreyColor),
                    ),
                    child: TabBar(
                      dividerColor: containerBorderGreyColor,
                        indicator: BoxDecoration(
                            color: selectedTabColor,
                            border: Border(
                              left: BorderSide(color: containerBorderGreyColor, ), // provides to left side
                              right: BorderSide(color: containerBorderGreyColor), // for right side
                            )

                        ),
                        labelColor: selectedTabLabelColor,
                        unselectedLabelColor: darkGrey,
                        controller: tabController,
                        tabs: const [
                          Tab(
                            text: "Today",
                          ),
                          Tab(
                            text: "This Week",
                          ),
                          Tab(
                            text: "This Month",
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Divider(
                    color: dividerColor,
                    thickness: 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(color: absentColor, shape: BoxShape.circle),),
                      SizedBox(width: 5.w,),
                      BigText(
                        text: "Absents",
                        size: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: darkGrey,
                      ),
                      SizedBox(width: 10.w,),

                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(color: lateColor, shape: BoxShape.circle),),
                      SizedBox(width: 5.w,),
                      BigText(
                        text: "Late",
                        size: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: darkGrey,
                      ),
                      SizedBox(width: 10.w,),

                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(color: onTimeColor, shape: BoxShape.circle),),
                      SizedBox(width: 5.w,),
                      BigText(
                        text: "On-Time",
                        size: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: darkGrey,
                      ),
                      SizedBox(width: 10.w,),



                    ],),
                  SizedBox(
                    height: 12.h,
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          // ListView.builder(
                          //     shrinkWrap: true,
                          //     itemCount: 3,
                          //     itemBuilder: (context, index) => Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: MyOrderCard(),
                          //     )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 40,),
                              SizedBox(
                                  height: 300,
                                  child: BarGraph(weeklySummary: weeklySummary,))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 40,),
                              SizedBox(
                                  height: 300,
                                  child: BarGraph(weeklySummary: weeklySummary,))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 40,),
                              SizedBox(
                                  height: 300,
                                  child: BarGraph(weeklySummary: weeklySummary,))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )

                ],),
              ),

              SizedBox(
                height: 30.h,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
