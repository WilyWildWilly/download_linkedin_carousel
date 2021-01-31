require "prawn"
require "open-uri"
require "image_size"

ary = [
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/1/1611994691297?e=1612188000&v=beta&t=s29zZ_Hmp_ia6seOraSLd4gs8ZBl18R6Gon5ZmEedrc",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/2/1611994691297?e=1612188000&v=beta&t=Cpu0wyxV2LzhPb1sG_w3eDvsElVSrCySpZ2o6s5b-U0",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/3/1611994691297?e=1612188000&v=beta&t=nTZU78RLGkKEtFoiWsYWCyWv3Ksul75Nbj1ZJvMU11o",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/4/1611994691297?e=1612188000&v=beta&t=zgxzv_s3X99lYEZW7Ui_yMVMUg1_kxgZvARgYSoDgF4",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/5/1611994691297?e=1612188000&v=beta&t=tiSJOJIzWm9m6yocoAJMQQODGj2-Axu0bQ7Ywq22vdw",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/6/1611994691297?e=1612188000&v=beta&t=UZTWUBjodGzoEU0YiXv9TtQ8a2ydJquIHiSmGN4chXk",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/7/1611994691297?e=1612188000&v=beta&t=E6KWfGZ67Zr8-Qu_5w4mbkSfNP9eyBsycxg3Xlacdnc",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/8/1611994691297?e=1612188000&v=beta&t=QrVhqD8wtaVDu7beqL4vHjpzEzASqgh_PhpBa4W5ScY",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/9/1611994691297?e=1612188000&v=beta&t=qgx6V9f01roeBP7DEY8PD0K4Qo4mB6_xGpk1ih5nmQw",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/10/1611994691297?e=1612188000&v=beta&t=_ivaQSj5mkiTWaMiib1EevUeNrd-BuAdf74nyvwK0NE",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/11/1611994691297?e=1612188000&v=beta&t=iMFokHoMbUvxwbfNnfOwKMX7iAddaCrvJs7Y2oWLwpo",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/12/1611994691297?e=1612188000&v=beta&t=opDItrcfwENNtfNHFZWUKCXnnB2VGdWp81KwoOgv6wI",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/13/1611994691297?e=1612188000&v=beta&t=CkIknRFry0lbZdWZQ03VYE7nP_F_DiVjfIxFmfLFgQE",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/14/1611994691297?e=1612188000&v=beta&t=cvCr2fR1-o4MF1epsqPZTd5OrgGKVRcUCiuqmV1MEig",
  "https://media-exp1.licdn.com/dms/image/C561FAQGh29SLSJ5s5A/feedshare-document-images_800/15/1611994691297?e=1612188000&v=beta&t=PnvtUmQYB0ZK96QesAaUnyu1LIQJihASs6rOeAHPO_g"
]

pdf = Prawn::Document.generate(  "python cs for data science.pdf"  ) do 
  start_new_page
  ary.each_with_index do | link, index |
    open('image.jpg', 'wb') do |file|
      file << URI.open(link).read
    end
    image_size = ImageSize.path('./image.jpg')
    go_to_page index + 1
    image './image.jpg', at: [0, 750]
    start_new_page(size: image_size.size) if ary[index + 1] != nil
  end
end