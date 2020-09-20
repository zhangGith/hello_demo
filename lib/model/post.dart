class Post {
  Post({
    this.title,
    this.author,
    this.description,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;

  bool selected = false;
}

  final List<Post> posts = [
    Post(
      title: 'Candy Shop',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
      imageUrl: 'https://pic4.zhimg.com/v2-3be05963f5f3753a8cb75b6692154d4a_1200x500.jpg',
    ),
    Post(
      title: 'Childhood in a picture',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://www.splitshire.com/wp-content/uploads/2016/02/SplitShire-2851.jpg',
    ),
    Post(
      title: 'Contained',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://static.runoob.com/images/demo/demo3.jpg',
    ),
    Post(
      title: 'Dragon',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'http://pic.lvmama.com/uploads/pc/place2/2017-11-24/19e96e3c-ba34-4dc4-8b17-62b3aa595cf9.jpg',
    ),
    Post(
      title: 'Free Hugs',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://www.splitshire.com/wp-content/uploads/2016/02/SplitShire-2851.jpg',
    ),
    Post(
      title: 'Gravity Falls',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://www.splitshire.com/wp-content/uploads/2016/02/SplitShire-2851.jpg',
    ),
    Post(
      title: 'Icecream Truck',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'http://file06.16sucai.com/2016/0430/d786891a4907f0f6bbdb1006a3e8cfed.jpg',
    ),
    Post(
      title: 'keyclack',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'http://www.chachaba.com/news/uploads/180807/5034_180807170636_1.jpg',
    ),
    Post(
      title: 'Overkill',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://pic1.zhimg.com/v2-3b4fc7e3a1195a081d0259246c38debc_b.jpg',
    ),
    Post(
      title: 'Say Hello to Barry',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'http://file06.16sucai.com/2016/0430/d786891a4907f0f6bbdb1006a3e8cfed.jpg',
    ),
    Post(
      title: 'Space Skull',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'http://www.chachaba.com/news/uploads/180807/5034_180807170636_1.jpg',
    ),
    Post(
      title: 'The Old Fashioned',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://pic1.zhimg.com/v2-3b4fc7e3a1195a081d0259246c38debc_b.jpg',
    ),
    Post(
      title: 'Tornado',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'http://www.chachaba.com/news/uploads/180807/5034_180807170636_1.jpg',
    ),
    Post(
      title: 'Undo',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://www.splitshire.com/wp-content/uploads/2016/02/SplitShire-2851.jpg',
    ),
    Post(
      title: 'White Dragon',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://www.splitshire.com/wp-content/uploads/2016/02/SplitShire-2851.jpg',
    )
  ];

