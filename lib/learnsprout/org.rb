module LearnSprout
  class Org

    attr_accessor :id, :org_id,
                  :name

    def initialize(attrs={})
      @client = attrs["client"]
      self.id = @org_id = attrs["id"]
      @name = attrs["name"]
    end

    def school(school_id)
      @client.school(@org_id, school_id)
    end

    def schools
      @client.schools(@org_id)
    end

    def students(since = nil)
      @client.students(@org_id, since: since)
    end

    def student(student_id)
      @client.student(@org_id, student_id)
    end

    def sections(since = nil)
      @client.sections(@org_id, since: since)
    end

    def section(section_id)
      @client.section(@org_id, section_id)
    end

    def teachers(since = nil)
      @client.teachers(@org_id, since: since)
    end

    def teacher(teacher_id)
      @client.teacher(@org_id, teacher_id)
    end

    def terms(since = nil)
      @client.terms(@org_id, since: since)
    end

    def term(term_id)
      @client.term(@org_id, term_id)
    end

    def courses(since = nil)
      @client.courses(@org_id, since: since)
    end

    def course(course_id)
      @client.course(@org_id, course_id)
    end
  end
end 
