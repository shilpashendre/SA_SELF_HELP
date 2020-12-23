import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahelp/constants/ColorConstants.dart';
import 'package:sahelp/constants/device_helper.dart';
import 'package:sahelp/navigationmenu/AppNavigation.dart';

class RegisterConfirmDialog extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;

  const RegisterConfirmDialog(
      {Key key, this.title, this.descriptions, this.text, this.img})
      : super(key: key);

  @override
  _RegisterConfirmDialogState createState() => _RegisterConfirmDialogState();
}

class _RegisterConfirmDialogState extends State<RegisterConfirmDialog> {
  final myScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget disclaimerText(isHeader, text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 13,
          color:
              isHeader ? AppColors.APP_MENU_SUBHEADER_TEXT : AppColors.DIVIDER,
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal),
    );
  }

  Widget dialogButton(btnLabel, btnColor, onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: btnColor,
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
            child: Text(
              btnLabel,
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
          ),
        ),
      ),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(0, 10),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: DeviceHelper.fullWidth,
                height: 60,
                color: AppColors.PRIMARY_COLOR,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, //change here don't //worked
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      child: Text(
                        "Legal Disclaimer",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: DeviceHelper.fullWidth,
                height: 400,
                child: Scrollbar(
                  isAlwaysShown: true,
                  controller: ScrollController(initialScrollOffset: 0.0),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          disclaimerText(
                            true,
                            "1.   Your use of the app is subject to conditions",
                          ),
                          disclaimerText(false,
                              '''\n1.1  The use of the SA Taxi app ("the app") is subject to the terms and conditions of use as set out below. It is important that you read and understand the terms of use applicable to the app.\n\n 1.2  The current version of these terms and conditions will govern the respective rights and obligations of SA Taxi and you each time you access this app. You acknowledge that the app will enable you to access to facilities, accounts and products which we offer, and that separate terms of use apply to each of these facilities, accounts and products. If there is a conflict between these terms and conditions and those that specifically govern particular facilities, accounts or products, the terms of use applying to each facility, account or product will apply\n'''),
                          disclaimerText(
                              true, "2.  Changes to these terms of use"),
                          disclaimerText(false,
                              '''\n2.1  These terms and conditions of use become effective when the user accesses this app for the first time and constitute a binding agreement between SA Taxi Development Finance (Pty) Ltd registration number 2008/012599/07 or its co-subsidiaries or affiliates, as the case may be (“SA Taxi”) and the user.\n\n 2.2  SA Taxi may amend these terms and conditions from time to time without notification to the user. By accessing this app the users are bound to the version of these terms and conditions published at the time of any visit to this app. The user agrees to view the current version each time this app is visited.\n'''),
                          disclaimerText(
                              true, "3.  Internet requirements for the app"),
                          disclaimerText(false,
                              '''\n3.1   To access the app using the internet you will need your own computer or other device (eg smart phone) and internet connectivity. Accordingly, you need to register with an internet service provider before the commencement date. You alone are responsible for buying, installing and maintaining your connection to the internet and must pay all the related costs, fees and expenses. If we change the internet software and hardware requirements for the app from time to time to improve, enhance or upgrade the app you must pay for any hardware, software or internet connectivity that you need to use the new system.\n\n 3.2   If you experience problems with the internet or your internet connection, you should contact your internet service provider first to try to resolve these problems before you contact us.\n'''),
                          disclaimerText(true,
                              "4.  Limitation of liability for app content"),
                          disclaimerText(false,
                              '''\n4.1   All the information on the app is only intended to provide you with general information about us, our products and services. Unless we acted with gross negligence or fraudulent intention or in breach of these terms of use, we will not be liable at any time for any losses, costs, expenses or damages which you may suffer or incur as a result of, or in connection with, information posted on our app which is not accurate or up to date.\n'''),
                          disclaimerText(true,
                              "5.  Cellphone requirements for access to the app"),
                          disclaimerText(false,
                              '''\n5.1   To access the app using a cellphone, you will need a phone and a sim card. Accordingly, you need to buy a phone and SIM card and register with a cellphone service provider before the commencement date if you haven’t already done so. You are alone responsible for buying your cellphone and cellphone contract with a service provider and must pay all related costs, fees and expenses. If we change the cellphone requirements for the app from time to time to improve, enhance or upgrade the app you must pay for any phone or service provider connectivity you need to use the new app.\n\n 5.2   If you experience problems with your cellphone or the cellular network you use to access the app, you should contact your cellphone service provider first to try to resolve these problems before you contact us.\n'''),
                          disclaimerText(true, "6.  Availability of the app"),
                          disclaimerText(false,
                              '''\n 6.1  You acknowledge that the app will not be available at all times. The app and its connections to various channels may, for example, be unavailable due to interruptions and necessary maintenance and repair work which is not within our control.\n\n 6.2   We give notice of such unavoidable interruptions and delays in providing our services. We will also give you timely notice of scheduled maintenance to the app that may cause an interruption or delay in the provision of our services or our ability to access the app.\n'''),
                          disclaimerText(true, "7.  Operation of your account"),
                          disclaimerText(false,
                              '''\n7.1  You authoriseus to carry out any and all instructions we receive through the app on condition that these instructions are authenticated by\n\n 7.1.1   your PIN and password\n\n  7.1.2  any other security measures/procedures that we may have agreed with you in writing from time to time\n\n  7.2   You acknowledge and agree that if you instruct us to buy any pre-paid products (eg. prepaid electricity or prepaid airtime) you will not be able to revoke your instruction once we have sent your order to the supplier of these products. In this case we merely act as the intermediary between you and the service provider.\n'''),
                          disclaimerText(true, "8.  Your duties"),
                          disclaimerText(false,
                              '''\n  8.1   You must keep your password and login ID secret. You must not disclose your, password or login ID to any other person.\n\n 8.2   You must take all reasonable precautions to prevent any person who is not authorised to do so from accessing or using the app and your account.\n\n 8.3   If you know or suspect that someone else has got hold of your, password or login ID, you must immediately notify us and immediately take steps to change your password.\n'''),
                          disclaimerText(true,
                              "9.  Unauthorised use of the login ID and password"),
                          disclaimerText(false,
                              '''\n9.1   Should another person get hold of your password or login ID, by whatever means, we will regard you as having authorised this person to use the app and to access your account on your behalf, as your agent with full authority to do so, unless you are able to prove that this person obtained the PIN, password or login ID because we were negligent, or because of internal fraud perpetuated at SA Taxi.\n'''),
                          disclaimerText(true,
                              "10.  Limitation of liability for loss or damage"),
                          disclaimerText(false,
                              '''\n10.1   You acknowledge that your use of the app and your account is entirely at your own risk.\n\n 10.2   Accordingly, unless we acted with gross negligence or fraudulent intent, we will not be liable for any costs, expenses, losses or damages of whatever kind which you may suffer or incur as a result of, arising from, or in connection with any one or more of the following-\n\n  10.2.1   any malfunction or defect in the hardware or equipment you use to access the app (including your personal computer and cellphone);\n\n 10.2.2   any defect in the software you use to access the app;\n\n 10.2.3   any act or omission on the part of any internet or cellphone service provider or any defect in the app or any other medium by which access is gained to the system;\n\n 10.2.4   the app being off-line or unavailable;\n\n 10.2.5   any power outages, industrial action or other circumstances which are not reasonably within our control;\n\n 10.2.6   incorrect, unauthorised, incomplete or unlawful instructions from you;\n\n 10.2.7   subject to clause 15 above, any unlawful or unauthorised or incorrect access to the app by any other person other than yourself;\n\n 10.2.8   Any failure or delay on our part in sending you any reminder notices.\n'''),
                          disclaimerText(
                              true, "11.  Indemnity and warranty by you"),
                          disclaimerText(false,
                              '''\n11.1   You promise to make good any loss or damage that we incur or suffer at any time to pay any claim brought against us at any time as a result of or in connection with the fact that you, or any person we are entitled to regard as authorised to act on your behalf in accordance with these terms of use provided us with any incorrect, wrong, unauthorised or wrongful instructions or information, unless we suffered or incurred this loss or damage, or this claim was brought against us, because of our own gross negligence or fraudulent intent or that of any person acting for or controlled by us (this is known in law as an indemnity).\n'''),
                          disclaimerText(true, "12.  Intellectual property"),
                          disclaimerText(false,
                              '''\n12.1   We retain all copyright and other intellectual property rights in all material, including logos and other graphics and multimedia works published on the app from time to time.\n\n 12.2   The logos and trademarks on our app are our registered and unregistered trademarks, or those of other persons. Nothing on our app is intended to be interpreted as granting you or any other person license or right to use any trademark without the prior written consent of the owner of the trademark. You may not, without our prior written consent, use any of our intellectual property or the intellectual property of any other person for any purposes whatsoever. You are prohibited from spoofing, linking or framing any part of the website.\n'''),
                          disclaimerText(true,
                              "13.  Termination, suspension or withdrawal of the app"),
                          disclaimerText(false,
                              '''\n13.1   We are entitled, in our discretion and without prejudice (ie harm or limitation) to our other rights under these terms of use or in law, to cancel your registration, to terminate your access to the app and to terminate these terms of use at any time if - \n\n13.1.1   we are of the view that it is necessary and we give you reasonable advance notice of our intention to do so; or 13.1.2   you do not use the app for a period of 6 (six) months or longer, without prior notice. \n\n13.2   You are entitled to terminate your use of the app and these terms of use at any time - \n\n13.2.1   by giving written notice to us within 7 (seven) days of the commencement date, without reason or penalty; and \n\n13.2.2   at any time thereafter, by giving us 30 (thirty) days’ written notice\n\n 13.3   You may reapply for access to the app at any time.\n\n 13.4   In order to protect you and us, we are entitled to immediately suspend or withdraw all or part of the app if -\n\n 13.3   You may reapply for access to the app at any time.\n\n 13.4   In order to protect you and us, we are entitled to immediately suspend or withdraw all or part of the app if - 13.4.1   the app is being used contrary to these terms of use; 13.4.2   we have reasonable grounds for believing that the app may be used negligently, illegally or fraudulently; or \n\n13.4.3   we have reasonable grounds for believing that the security of the systems used to provide the app may be compromised. 13.5   You are liable for all transactions and obligations (and related charges) which are incurred up to and including the date of termination.\n'''),
                          disclaimerText(true, "14.  Your chosen address"),
                          disclaimerText(false,
                              '''\n14.1   You choose the physical address in South Africa stated where we may serve legal process and may execute on any judgment we may obtain against you, and for all other purposes relating to these terms of use.\n'''),
                          disclaimerText(true,
                              "15.  Confidentiality of information and security"),
                          disclaimerText(false,
                              '''\n15.1   You acknowledge that information transmitted through the internet, cellphone networks and other communication systems, including wireless connections, is susceptible to interception, unlawful access, distortion and monitoring and that you use the app at your own risk.\n'''),
                          disclaimerText(true,
                              "16.  Use of the facility outside of South Africa"),
                          disclaimerText(false,
                              '''\n16.1   When using the facility outside the common monetary area (ie not in South Africa, Lesotho, Namibia, and Swaziland), all transactions concluded through the app are subject to South Africa Reserve Exchange Control Rules and Regulations (as per section 9 of the Currency and Exchanges Act 9 of 1993). Governing law and jurisdiction\n\n  16.2   These terms are governed in all respects by the laws of the Republic of South Africa. You agree that we may bring legal proceedings against you relating to these terms of use in any Magistrate’s Court that has authority to hear and decide on the case (this authority is called jurisdiction). You agree to the jurisdiction of the Magistrate’s Court even if the amount we claim from you is more than the Magistrate’s Court limit. This does not prevent us from bringing legal proceedings in a High Court that has jurisdiction.\n'''),
                          disclaimerText(true, "17.  Conflict with the CPA"),
                          disclaimerText(false,
                              '''\n17.1   TIf any provision of these terms of use conflicts with any provisions of the Consumer Protection Act 68 of 2008 (“CPA”), the provisions of the CPA apply.\n'''),
                          disclaimerText(true, "18.  Each clause is separate"),
                          disclaimerText(false,
                              '''\n18.1   The parties acknowledge that each provision of these terms of use is separate. If any provision of these terms of use is or becomes illegal, invalid or unenforceable for any reason, it must be treated as if it had not been included in these terms of use. This does not make the rest of these terms of use illegal, invalid or unenforceable, or affect the legality, validity or enforceability of any other provision or these terms of use as a whole.\n'''),
                          disclaimerText(
                              true, "19.  We do not lose our rights"),
                          disclaimerText(false,
                              '''\n19.1   We do not lose our rights under these terms of use if we do not immediately and in every instance insist on them. You may not raise it as a defense if we have a right that we did not enforce at the relevant time.\n'''),
                          disclaimerText(true,
                              "20.  These terms of use are the entire contract"),
                          disclaimerText(false,
                              '''\n20.1   These terms of use are the only record of the contract between the parties in regard to the subject matter of these terms of use. Unless a court holds otherwise, no party is legally obliged to comply with any term, condition, or undertaking, not recorded in these terms of use, and these terms of use replace any arrangement or understanding held by the parties before these terms of use governed their relationship.\n'''),
                          disclaimerText(
                              true, "21.  Transferring rights or obligations"),
                          disclaimerText(false,
                              '''\n21.1   You may not transfer any of your rights or obligations under these terms of use to anyone else without getting our written permission in advance.\n\n 21.2   We may transfer all or some of our rights and obligations under these terms of use to any person. We do not have to inform you or get your permission to transfer our rights and obligations. If this clause applies, then ‘we’ where used in these terms of use will include the person to whom we have transferred any of our rights or obligations in terms of this clause.\n'''),
                          disclaimerText(true,
                              "22.  Your statement about your financial status"),
                          disclaimerText(false,
                              '''\n22.1   You hereby confirm that -\n\n  22.2   You have fully and truthfully given all information we have asked for about these terms of use, your account and your personal and financial circumstances ; and\n\n 22.3   You understand that if any of these statements are not true, it may prevent you from exercising some or all of your rights.\n'''),
                          disclaimerText(true,
                              "23.  You applied for access to the app of your own free choice"),
                          disclaimerText(false,
                              '''\n23.1   You confirm that -  23.1.1  we did not make you register for the app or do anything leading up to these terms of use that would be considered unconscionable or otherwise render these terms of use unlawful;\n\n 23.1.2   there were no blank spaces on these terms of use at the time when you registered for access to the app;\n\n 23.1.3   we did not ask you to sign any additional agreements or documents that are not referred to in these terms of use; and\n\n 23.1.4   we did not make you an offer that automatically results in an agreement if you did not decline it'''),
                          disclaimerText(true, "24.  General declarations"),
                          disclaimerText(false,
                              '''\n24.1   You understand the risks of accessing the app.\n\n 24.2  You understand your rights and duties under these terms of use.\n\n 24.3  You have the legal capacity to access and use the app on these terms of use. This means, in the context of these terms of use, that the law regards you as competent to access and use the app on these terms of use, considering, if you are an individual, factors such as your age, marital status and mental state.\n\n 24.4  You have read and understood all these terms of use.\n'''),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: AppColors.APP_MENU_SUBHEADER_TEXT,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    disclaimerText(false, "Do you accept these terms?"),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                      child: Divider(
                        color: AppColors.APP_MENU_SUBHEADER_TEXT,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        dialogButton(
                          "YES",
                          AppColors.APP_HEADER_BLUE,
                          () {
                            Navigator.pushNamed(
                                context, AppNavigation.routeName);
                          },
                        ),
                        dialogButton(
                          "NO",
                          AppColors.APP_MENU_SUBHEADER_TEXT,
                          () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
