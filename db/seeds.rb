# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
data=[
    {
       Name:"Air Cube",
       image:"https://transparent-sound-object.s3.ap-southeast-2.amazonaws.com/AirCube.gif",
       description:"A blue 3d cube sound object made from sound waves.",
       color:"#3BCEDE" 
    },
    {
        Name:'Air Cylinder',
        image:'https://transparent-sound-object.s3.ap-southeast-2.amazonaws.com/AirCylinder.gif',
        description:'A 3d orange Cylinder sound object made from sound wave',
        color:'#F6AD6D'
    },
    {
        Name:'Air Pyramid',
        image:'https://transparent-sound-object.s3.ap-southeast-2.amazonaws.com/AirPyramid.gif',
        description:'A red 3d pyramid sound object made from sound waves.',
        color: '#F768A9'
    }
]
i=0
while 3>i 
    Soundobjectlist.create(data[i])
    i=i+1;
end