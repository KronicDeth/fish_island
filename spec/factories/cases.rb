FactoryGirl.define do
  factory :case do
    block_number { FactoryGirl.generate(:block_number) }
    cpl_number { FactoryGirl.generate(:cpl_number) }
    patient_last_name { FactoryGirl.generate(:patient_last_name) }
    validation true
  end

  sequence :block_number do |n|
    n.to_s
  end

  sequence :cpl_number do |n|
    n.to_s
  end

  sequence :patient_last_name do |n|
    "Last Name #{n}"
  end
end
