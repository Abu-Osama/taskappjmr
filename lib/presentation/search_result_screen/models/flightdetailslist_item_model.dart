

class FlightdetailslistItemModel {
  FlightdetailslistItemModel(
      {this.onwardText,
        this.onwardPrice,
        this.onwardTime,
        this.onwardLocation,
        this.onwardDurationT,
        this.returnTime,
        this.returnLocation,
        this.stops,
        this.returnText,
        this.returnPrice,
        this.returnTime1,
        this.returnLocation1,
        this.returnDurationT,
        this.returnTime2,
        this.returnLocation2,
        this.flightDetails,
        this.id}) {
       onwardText = onwardText ?? "Onward - Garuda Indonesia";
       onwardPrice = onwardPrice ?? "AED 409";
       onwardTime = onwardTime ?? "14:35";
       onwardLocation = onwardLocation ?? "BLR - Bengaluru";
       onwardDurationT = onwardDurationT ?? "4h 30m";
       returnTime = returnTime ?? "21:55";
       returnLocation = returnLocation ?? "DXB - Dubai";
       stops = stops ?? "2 Stops";
       returnText = returnText ?? "Return - Garuda Indonesia";
       returnPrice = returnPrice ?? "AED 359";
       returnTime1 = returnTime1 ?? "21:55";
       returnLocation1 = returnLocation1 ?? "DXB - Dubai";
       returnDurationT = returnDurationT ?? "4h 30m";
       returnTime2 = returnTime2 ?? "14:35";
       returnLocation2 = returnLocation2 ?? "BLR - Bengaluru";
       flightDetails = flightDetails ?? "Flight Details";
       id = id ?? "";
  }
  String? onwardText;
  String? onwardPrice;
  String? onwardTime;
  String? onwardLocation;
  String? onwardDurationT;
  String? returnTime;
  String? returnLocation;
  String? stops;
  String? returnText;
  String? returnPrice;
  String? returnTime1;
  String? returnLocation1;
  String? returnDurationT;
  String? returnTime2;
  String? returnLocation2;
  String? flightDetails;
  String? id;


  }