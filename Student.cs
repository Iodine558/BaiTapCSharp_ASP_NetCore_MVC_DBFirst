using System;
using System.Collections.Generic;

namespace DbFirstDemo;

public partial class Student
{
    public int StudentId { get; set; }

    public string Name { get; set; } = null!;

    public string? Email { get; set; }

    public DateOnly? DateOfBirth { get; set; }

    public virtual ICollection<Enrollment> Enrollments { get; set; } = new List<Enrollment>();
}
