class Report
  def Report.report(out, machines, robot)
    # header(out)
    out.print "FACTORY REPORT\n"
    
    # machine_details(machines, out)
    machines.each do |machine|
      out.print "Machine #{machine.name}"
      out.print " bin=#{machine.bin}" if machine.bin != nil
      out.print "\n"
    end
    
    # robot_details(robot, out)
    out.print "\n"
    out.print "Robot"
    if robot.location != nil
      out.print " location=#{robot.location.name}"
    end
    out.print " bin=#{robot.bin}" if robot.bin != nil
    out.print "\n"

    # footer(out)
    out.print "========\n"
  end
end
