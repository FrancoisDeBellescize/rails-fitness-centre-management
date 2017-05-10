# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.create(name: 'Home', content: 'This modern gymnasium is well equipped and offers the latest equipment for varying levels of exercise. You can also choose')
Page.create(name: 'Membership', content: 'Optimal health is your aim, and your valuable asset. We care about your fitness and wellness and we want to help you improve your lifestyle, get fit, lose weight, train for an event or de-stress – whatever your reasons for gym membership Dublin’s Dartry Health Club has you covered. We inspire and motivate, encourage and inform. Our health club membership is an investment in your health that will bring countless benefits')
Page.create(name: 'Classes', content: 'Located in the heart of Dublin, D8 Fitness is Ireland’s most comprehensive supplier of fitness equipment, apparel, footwear, accessories, nutritional supplements and training materials. We carry the largest selection of premium and top-of-the-line items from trusted brand names as well as a broad variety of budget items that won’t break the bank.')
Page.create(name: 'Contact us', content: 'If you have any questions please don’t hesitate to contact us.')

MembershipOption.create(name: "Platinum", description: "Join the Livingwell Kilmainham for one year and get one month free. Also receive a Personal Training Voucher.", price: "29.99")
MembershipOption.create(name: "Gold", description: "A gold offer that allow you to discover all classes", price: "19.99")
MembershipOption.create(name: "Student", description: "This offer is for all student who want to have access to all courses", price: "9.99")
MembershipOption.create(name: "Over 60", description: "There is no age to do sport !", price: "9.99")

Classe.create(name: "Yoga", day: "Monday", description: "Yoga", instructor_name: "Instructor", date_start: "2016-03-12", time: "2016-03-12 12:30:00")
Classe.create(name: "Spin and Tone", day: "Friday", description: "Spin and Tone", instructor_name: "Instructor", date_start: "2017-09-12", time: "2017-09-12 12:30:00")
Classe.create(name: "Step Aerobics", day: "Wednesday", description: "Step Aerobics", instructor_name: "Instructor", date_start: "2017-09-12", time: "2017-09-12 12:30:00")
Classe.create(name: "Zumba", day: "Saturday", description: "Zumba", instructor_name: "Instructor", date_start: "2017-09-12", time: "2017-09-12 12:30:00")

Image.create(filename: "image1", alt: "image1", caption: "image1", url: "http://s463729201.onlinehome.fr/wp-content/themes/gymbase/images/slider/img1.jpg")
Image.create(filename: "image2", alt: "image2", caption: "image2", url: "http://s463729201.onlinehome.fr/wp-content/themes/gymbase/images/slider/img2.jpg")
Image.create(filename: "image3", alt: "image3", caption: "image3", url: "http://s463729201.onlinehome.fr/wp-content/themes/gymbase/images/slider/img3.jpg")
Image.create(filename: "image4", alt: "image4", caption: "image4", url: "http://www.forest-hill.fr/images/SliderPicture/4/images/slider/1300x370-coach-fille.jpg")
Image.create(filename: "image5", alt: "image5", caption: "image5", url: "http://www.be-ant.com/wp-content/uploads/2015/04/Contact-banner.jpg")
Image.create(filename: "image6", alt: "image6", caption: "image6", url: "http://www.academiacristal.com.br/imgs/290_Capa.jpg")
Image.create(filename: "image7", alt: "image7", caption: "image7", url: "http://vibrantentertainments.com/images/photogallery/big/43.jpg")

Page.find(1).images.push(Image.find(1), Image.find(2))
Page.find(2).images.push(Image.find(3), Image.find(4))
Page.find(3).images.push(Image.find(7), Image.find(6))
Page.find(4).images.push(Image.find(5))
