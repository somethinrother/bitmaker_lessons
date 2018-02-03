class Entry < ApplicationRecord

  def title
    word.split.map(&:capitalize).join(' ')
  end

end
