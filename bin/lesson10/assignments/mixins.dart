// Định nghĩa mixin HasAcceleration

// ignore_for_file: overridden_fields

void main() {
  // Tạo đối tượng RaceCar và JetCar
  RaceCar raceCar = RaceCar(150.0); // tốc độ 150 km/h
  JetCar jetCar = JetCar(300.0, 20.0); // tốc độ 300 km/h, gia tốc 20 m/s²

  // Tính toán thời gian hoàn thành cuộc đua (quãng đường 500 km) cho RaceCar
  double raceCarTime = raceCar.calculateTime(500.0);
  print('RaceCar hoàn thành cuộc đua trong: $raceCarTime giờ');

  // Tính toán thời gian hoàn thành cuộc đua (quãng đường 500 km) cho JetCar
  double jetCarTime = jetCar.calculateTime(500.0);
  print('JetCar hoàn thành cuộc đua trong: $jetCarTime giờ');

  // Tính toán khoảng cách JetCar có thể di chuyển trong 10 giây với gia tốc hiện tại
  double jetCarDistance = jetCar.calculateDistance(10.0);
  print('JetCar có thể di chuyển $jetCarDistance mét trong 10 giây');
}

mixin HasAcceleration {
  late double acceleration;

  double calculateDistance(double time) {
    return 0.5 * acceleration * time * time;
  }
}

// Định nghĩa mixin HasSpeed
mixin HasSpeed {
  late double speed;

  double calculateTime(double distance) {
    return distance / speed;
  }
}

// Định nghĩa lớp JetCar
class JetCar with HasSpeed, HasAcceleration {
  @override
  double acceleration;

  @override
  double speed;

  JetCar(this.speed, this.acceleration);
}

// Định nghĩa lớp RaceCar
class RaceCar with HasSpeed {
  @override
  double speed;
  RaceCar(this.speed);
}
