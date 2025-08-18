class Education {
  final String institutionName;
  final String department;
  final String startTime;
  final String endTime; // Nullable end time
  final String grade;
  final bool start;
  final bool end; // Nullable grade

  Education(
      {required this.institutionName,
      required this.department,
      required this.startTime,
      required this.endTime,
      required this.grade,
      required this.start,
      required this.end});
}

List<Education> educations = [
  Education(
      institutionName: 'Amity University Noida',
      startTime: 'Sep 2020',
      endTime: 'Jul 2024',
      department: 'B.Tech CSE',
      grade: '8.13',
      start: false,
      end: false),
  Education(
      institutionName: 'FIITJEE',
      startTime: 'Aug 2018',
      endTime: 'May 2020',
      department: 'MPC',
      grade: '9.05 CGPA / Mains:- 96.1',
      start: false,
      end: false),
  Education(
      institutionName: 'St. Anns High School',
      startTime: 'Jun 2017',
      endTime: 'Mar 2020',
      department: '',
      grade: '86%',
      start: false,
      end: false)
];
