module ApplicationHelper
  def math_dev_sthan
    [
      { sthan_name: "श्री राम परिवार मंदिर", sthan_image: 'sm-ram-parivar.jpg', sthan_description: 'श्री राम परिवार मंदिर', label: 'shree_ram_parivar' },
      { sthan_name: "शिव परिवार", sthan_image: '', sthan_description: 'शिव परिवार', label: 'shree-shiv-parivar' },
      { sthan_name: "श्री ठरेश्रीबाबा जी का स्थान", sthan_image: '', sthan_description: 'श्री ठरेश्रीबाबा जी का स्थान', label: 'shree-thareshee-baba' },
      { sthan_name: "श्री हनुमान जी का स्थान", sthan_image: 'shree-hanuman-ji-home.jpg', sthan_description: 'श्री हनुमान जी का स्थान', label: 'shree-hanuman-ji' },
      { sthan_name: "श्री कलिका माता जी का स्थान", sthan_image: '', sthan_description: 'श्री कलिका माता जी का स्थान', label: 'kalika-mata' },
      { sthan_name: "अष्टयाम बंगला", sthan_image: '', sthan_description: 'अष्टयाम बंगला', label: 'ashtyam-bangala' },
      { sthan_name: "मठ के समिप सरोवर", sthan_image: '', sthan_description: 'मठ के समिप सरोवर ', label: 'sarovar' },
      { sthan_name: "गौशाला", sthan_image: '', sthan_description: 'गौशाला', label: 'gaushala' }
    ]
  end

  def math_sthan_iamge_load(sthan_image_path, uploaded = false)
    return "small-temple.jpg" unless sthan_image_path.present?
    if uploaded
      File.exist?(sthan_image_path.first.path.to_s) ? sthan_image_path.first.url.to_s : "small-temple.jpg"
    else
      sthan_image_path.present? ? sthan_image_path.to_s : "small-temple.jpg"
    end
  end

  def dev_sthan_image_load(uploaded_path, file_path, size = '') 
    if uploaded_path.present? && File.exist?(uploaded_path.first.path.to_s)
      uploaded_path.first.url.to_s
    else
      "#{file_path}#{size}.jpg"
    end
  end

  def date_checks(date)
    if date.present?
      actual_format = date.strftime('%e %b, %Y को %l:%M %P बजे')
      check_time = ''
      if actual_format.include?('pm') 
        check_time = 'सायंकाल'
      elsif actual_format.include?('am') 
        check_time = 'सुबह'
      end
      date.strftime("%e %b, %Y को #{check_time} %l:%M बजे")
    else
      ''
    end
  end

  def program_date_start(date)
    return true unless date.present?
    date >= Time.now if date.present?
  end

  def program_date_end(date)
    return true unless date.present?
    date < Time.now if date.present?
  end

  def short_description(desc, desc_count)
    if desc.length > desc_count
      desc = "#{desc.slice(0, desc_count)}..."
    else
      desc
    end
  end

  def current_date?(date)
    date.strftime('%F')  == Time.now.strftime('%F') 
  end

end
