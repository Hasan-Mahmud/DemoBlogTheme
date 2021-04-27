class Blog{
  final String date, title, description, image;

  Blog({this.date, this.title, this.description, this.image});
}

List<Blog> blogPosts = [
  Blog(
    date: '23 September 2020',
    image: 'assets/images/0.jpg',
    title: "How Ireland's bank executed a complete security redesign",
    description: "Mobile banking has seen a huge increase since Coronavirus. In fact, CX platform Lightico found that 63 percent of people surveyed said they were more willing to try a new digital banking app than before the pandemic. So while you may be more inclined to bank remotely these days, cybercrime—especially targeting banks—is on the rise. Although online banking has always been very secure, phishing scams are becoming increasingly sophisticated, and hackers are taking advantage of people’s heightened emotions and anxiety amidst the global pandemic. As a result, more people are giving away their security details.Research shows that even people who are fairly technical and sensitive to security matters are often inconsistent in their behaviors and don’t adopt strong, unique passwords or use two-factor authentication. That’s why designing security tools that are so seamless that any person or company can use them is critical to online banking security, said Philip Dwyer, experience design lead at AIB."
  ),

  Blog(
    date: '21 August 2020',
    image: 'assets/images/1.jpg',
    title: "5 Examples of web motion design that reeally catcah your Eye",
    description: "Web animation has become one of the most exciting web design trends in 2020. It breathes more life into a website and makes user interactions even more appealing and intriguing. Animation for websites allows introducing a brand in an exceptionally creative way in modern digital space. It helps create a lasting impression, make a company highly distinguishable on the web, and create a powerful brand image. We have investigated, created, and implemented many website animations during our over-decade experience in web design, and now, we’re openly sharing our findings with you. In this article, we will consider the five most popular ways to use web motion graphics and the five most incredible examples of web motion design."
  ),

  Blog(
    date: '23 September 2020',
    image: 'assets/images/2.jpg',
    title: "The Principles of Dark UI Design",
    description: "A dark theme is not a black theme. It would best be thought of as a “low-light” theme. One of the main concerns with dark UIs is achieving enough contrast so visual elements have separation and text is legible. Most designers would think using black would be optimal to achieve strong contrast. However, it’s best not to use true black (#000000) for backgrounds or surface colors. Black is best reserved for other UI elements and used sparingly. For example, true black can be used for small UI elements or a surrounding bezel."
  ),
    
];