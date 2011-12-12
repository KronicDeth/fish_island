require 'spec_helper'

describe Case do
  context "columns" do
    it { should have_db_column(:block_number).of_type(:string).with_options(:null => false) }
    it { should have_db_column(:cpl_number).of_type(:string).with_options(:null => false) }
    it { should have_db_column(:patient_last_name).of_type(:string).with_options(:null => false) }
    it { should have_db_column(:validation).of_type(:boolean).with_options(:default => false, :null => false) }
  end
end
