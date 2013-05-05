class SampleViewController < UIViewController
  def loadView
    self.view = UIView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    self.view.backgroundColor = UIColor.whiteColor

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect).tap do |b|
      b.setTitle("Push me!", forState: UIControlStateNormal)
      b.frame = [[110, 300], [100, 44]]
      b.when(UIControlEventTouchUpInside) do
        show_alert
      end
    end

    label = UILabel.alloc.init.tap do |l|
      l.frame = [[100, 100], [120, 60]]
      l.font = UIFont.fontWithName("AppleGothic", size: 20)
      l.text = "Sample App"
    end

    self.view.addSubview(button)
    self.view.addSubview(label)
  end

  def show_alert
    UIAlertView.alloc.initWithTitle(
      "Title",
      message: "Message",
      delegate: nil,
      cancelButtonTitle: nil,
      otherButtonTitles: "OK", nil
    ).show
  end
end
