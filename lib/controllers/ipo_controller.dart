import 'package:get/get.dart';

class IpoController extends GetxController {
  var pastIpo = [
    {
      "Name": "CMS",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "Reliance",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "TCS",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "TATA",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "50",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5657",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "Infosys",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    }
  ].obs;
  var upcomingIPO = [
    {
      "Name": "NSE",
      "Start Date": "jan/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "LIC",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "OYO",
      "Start Date": "10/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "515/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "JIO",
      "Start Date": "525/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    }
  ].obs;
  var liveIPO = [
    {
      "Name": "Tech Fino",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "500",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "5/12/2021",
      "Total Subscription": "5/12/2021"
    },
    {
      "Name": "KIA",
      "Start Date": "5/12/2021",
      "End Date": "1/12/2021",
      "Price Range": "5/12/2021",
      "Quantity in 1 Lot": "5",
      "Allotment Finalisation": "5/12/2021",
      "Refund Initiation": "5/12/2021",
      "Demate Transfer": "5/12/2021",
      "Listing": "5/12/2021",
      "Qualified Instituational Buyers(QIBs) , Subscription": "5/12/2021",
      "Non Instituational Buyers(NII) , Subscription": "5/12/2021",
      "Retail Investors , Subscription": "52X",
      "Total Subscription": "5/12/2021"
    }
  ].obs;
}
