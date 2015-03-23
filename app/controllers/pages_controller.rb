class PagesController < ApplicationController
  def about
  end

  def resume
    
  end

  def pdf
    file_name = "CharlesMilam-Resume.pdf"
    file_path ="#{Rails.root}/public/#{file_name}"
    send_file(file_path ,
    :type => 'application/pdf/docx/html/htm/doc',
    :disposition => 'attachment')  
  end   

  def contact
  end
end
