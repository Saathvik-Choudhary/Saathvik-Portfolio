// ignore_for_file: camel_case_types

class Experience {
  final String companyName;
  final String role;
  final String startTime;
  final String endTime;
  final String workType;
  final String duration;
  final bool start;
  final bool end;

  Experience(
      {required this.companyName,
      required this.role,
      required this.startTime,
      required this.endTime,
      required this.workType,
      required this.start,
      required this.end,
      required this.duration});
}

List<Experience> Experiences = [
  Experience(
    role: 'Systems Developer',
    companyName: 'Shell',
    startTime: 'Aug 2024',
    endTime: '',
    workType: 'Remote',
    duration: '',
    start: true,
    end: false,
  ),
  Experience(
    role: 'Software Developer Intern',
    companyName: 'Tech Haus Gurgaon',
    startTime: 'Mar 2024',
    endTime: 'Jul 2024',
    workType: 'Remote',
    duration: '4 mos',
    start: true,
    end: true,
  ),
  Experience(
    role: 'Software Developer Intern',
    companyName: 'OHSL, Los Gatos',
    startTime: 'May 2023',
    endTime: 'Jul 2023',
    workType: 'Remote',
    duration: '3 mos',
    start: true,
    end: true,
  ),
  Experience(
    role: 'Backend Web Developer',
    companyName: 'Strategy Here LLC',
    startTime: 'Feb 2022',
    endTime: 'May 2022',
    workType: 'Remote',
    duration: '4 mos',
    start: true,
    end: true,
  ),
];
