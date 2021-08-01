class Appointment {
  final String title, lastMessage, image, time;
  final bool isActive;

  Appointment({
    this.title = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List appointmentData = [
  Appointment(
    title: "Appointment No -101",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user.png",
    time: "3m ago",
    isActive: false,
  ),
  Appointment(
    title: "Appointment No - 102",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
  ),
  Appointment(
    title: "Appointment No - 103",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
  Appointment(
    title: "Appointment No - 104",
    lastMessage: "You’re welcome :)",
    image: "assets/images/user_4.png",
    time: "5d ago",
    isActive: true,
  ),
  Appointment(
    title: "Appointment No - 101",
    lastMessage: "Thanks",
    image: "assets/images/user_5.png",
    time: "6d ago",
    isActive: false,
  ),
  Appointment(
    title: "Appointment No-101",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user.png",
    time: "3m ago",
    isActive: false,
  ),
  Appointment(
    title: "Appointment No-101",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
  ),
  Appointment(
    title: "Appointment No-101",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
];
