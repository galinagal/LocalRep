class Developer
  attr_reader :name, :task_list
  MAX_TASKS= 10
  
  def initialize(name)
    @name = name
    @task_list = []
  end
  def add_task(task)
    @task_list << task
    if @task_list.size>MAX_TASKS
      raise ArgumentError, "Слишком много работы"
    else
      puts %Q{#{@name}: добавлена задача "#{task}". Всего в списке задач: #{@task_list.count}}
    end
  end
  def work!
      if @task_list.empty?
        raise ArgumentError, "Нечего делать"
      else
        puts %Q{#{@name}: задача "#{@task_list.shift}" выполнена. Осталось задач:#{@task_list.count}}
      end
  end
  def tasks
    puts @task_list
    @task_list.map.with_index{|t,i| "#{i+1}. #{t}"}.join("\n")
  end
  def status
    if @task_list.empty?
      puts 'Свободен'
    elsif @task_list.size>MAX_TASKS
      puts 'Занят'
    else 
      puts 'Работаю'
    end
  end
  def can_add_task?
    if @task_list.size>MAX_TASKS
      return false 
    else 
      return true 
    end
  end
  def can_work?
    if @task_list.empty?
      return true
    elsif  @task_list.size>MAX_TASKS
      return false
    else
      return true
    end
  end
end