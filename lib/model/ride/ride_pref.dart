import '../location/locations.dart';

class RidePreference {
  final Location departure;
  final DateTime departureDate;
  final Location arrival;
  final int requestedSeats;

  const RidePreference({
    required this.departure,
    required this.departureDate,
    required this.arrival,
    required this.requestedSeats
  });

  @override
  String toString() {
    return 'RidePref(departure: ${departure.name}, '
        'departureDate: ${departureDate.toIso8601String()}, '
        'arrival: ${arrival.name}, '
        'requestedSeats: $requestedSeats)';
  }


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    
    return other is RidePreference && 
           departure == other.departure && 
           departureDate == other.departureDate &&
           arrival == other.arrival &&
           requestedSeats == other.requestedSeats;
  }

  
  @override
  int get hashCode => 
    departure.hashCode ^ 
    departureDate.hashCode ^ 
    arrival.hashCode ^ 
    requestedSeats.hashCode;
}