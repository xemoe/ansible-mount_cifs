require 'spec_helper'

describe "System spec" do
    describe "Required packages should be installed" do
        describe package('cifs-utils') do
            it { should be_installed }
        end
    end
end

mounted_directory = '/mnt/cifs/172.100.0.202/cifs'

describe "Tasks spec" do
    describe "Given directory should be mounted directory" do
        describe file("#{mounted_directory}") do
              it { should be_mounted }
        end
    end
end
