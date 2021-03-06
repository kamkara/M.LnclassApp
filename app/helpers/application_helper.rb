module ApplicationHelper

#Onglet Title
def title
 base_title = "Lnclass Education"
  if @title.nil?
  base_title
  else
  "#{@title} | #{base_title}"
  end
end
#site description
def description
  "Lnclass Education aide les élèves à obtenir le BAC"
end

  #Sign in and up anywhere on app
    def resource_name
    :user
  end
  
  def resource
    @resource ||= User.new
  end
  
  def resource_class
    User
  end
  
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  

  def user_greeting
    if user_signed_in?
      "#{user_comming}, #{current_user.first_name}"
    else
      ""   
    end
  end
    
  def user_comming
    case Time.now.strftime("%H").to_i
      when 1..11
        "Bonjour"
      when 12..
        "Bonsoir"
      else
        'Bienvenue(e)'
    end
  end
    
    
#USER NOTICE
  def bootstrap_class_for_flash(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end

  #role
  def currentUserRole?(current_user)
    case current_user.role
    when "Student"
      ":student?"
    when "Teacher"
      ":teacher?"
    when "Team"
      ":team?"
    else
      ""
    end
  end

  def moderator?(current_user)
    if current_user.role === "Team" || current_user.id ===  @course.user_id
      ":moderator?"
    end
  end
end
