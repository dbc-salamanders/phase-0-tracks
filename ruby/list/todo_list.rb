class TodoList
  
  def initialize(chores)
    @chores = chores
  end
  
  def get_items
    @chores
  end
  
  def add_item(new_chore)
    @chores << new_chore
  end
  
  def delete_item(deleted_chore)
    @chores.delete(deleted_chore)
  end
  
  def get_item(index)
    @chores[index]
  end
end
