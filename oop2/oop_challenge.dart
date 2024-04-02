// Define the Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor for the Student class
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printStudentInfo() {
    print('Student Name: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Define the Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor for the Teacher class
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printTeacherInfo() {
    print('Teacher Name: $name, Age: $age, Subject: $subject');
  }
}

// Main class to create student and teacher objects and call methods
class Main {
  // Main method
  static void main() {
    // Create a student object
    Student student = Student('John Doe', 15, 10);
    
    // Create a teacher object
    Teacher teacher = Teacher('Jane Smith', 35, 'Mathematics');

    // Call methods to print information
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  // Call main method from Main class
  Main.main();
}
