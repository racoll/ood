class SecretDiary
  def lock
    @unlocked = false
  end

  def unlock
    @unlocked = true
  end

  def add_entry
    fail "diary is locked" unless (@unlocked ==  true)
    @entry
  end

  def get_entries
    fail "diary is locked" unless (@unlocked == true)
    @entry
  end

end
