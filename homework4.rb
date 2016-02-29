require_relative './homework3'

class Team 

  attr_reader :seniors, :developers, :juniors, :names, :team_list

  def initialize(&block)
    @all = []
    @juniors = []
    @seniors = []
    @developers = []
    @names = []
    @team_list = []
    instance_eval(&block)
  end
  def have_juniors(*names)
    *@juniors=names
    *@juniors=names.map {|name| JuniorDeveloper.new(name)}
  end
  def have_seniors(*names)
    *@seniors=names
    *@seniors=names.map {|name| SeniorDeveloper.new(name)}
  end
  def have_developers(*names)
    *@developers=names
    *@developers=names.map {|name| Developer.new(name)}
  end
  def all
    @all=@seniors+@developers+@juniors
  end
  def priority(*team_list)
    *@priority=team_list
  end
  #def report(type)
    #all.each{|dev| puts "#{dev.name} (#{dev.type.to_s}): #{dev.task_list.join(", ")}"}
  #end
end

team= Team.new do 
  have_seniors "Олег", "Оксана"
  have_developers "Олеся", "Василий", "Игорь-Богдан"
  have_juniors "Владислава", "Аркадий", "Рамеш"

  priority :juniors, :developers, :seniors

  #on_task :junior do |dev, task|
    #puts "Отдали задачу #{task} разработчику #{dev.name}, следите за ним!"
  #end

  #on_task :developer do |dev, task|
    #puts "#{dev.name} просто сделает #{task}."
  #end

  #on_task :senior do |dev, task|
    #puts "#{dev.name} сделает #{task}, но просит больше с такими глупостями не приставать"
  #end
end
p team

p team.report

