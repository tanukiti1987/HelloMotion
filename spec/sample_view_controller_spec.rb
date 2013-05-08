describe 'SampleViewController' do
  tests SampleViewController

  it 'shows "sample app" label' do
    view('Sample App').should != nil
  end

  it 'does not show alert when user did not any action' do
    controller.instance_variable_get('@alert').should == nil
  end

  it 'shows alert when user tap the button' do
    tap 'Push me!'
    controller.instance_variable_get('@alert').title.should == 'Title'
    controller.instance_variable_get('@alert').message.should == 'Message'
  end
end
