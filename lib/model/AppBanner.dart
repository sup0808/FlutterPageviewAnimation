class AppBanner{
  final int id;
  final String title;
  final String thumbnail;

  AppBanner(this.id,  this.title,  this.thumbnail);


}
//Sample data
 List<AppBanner> banners = [
  AppBanner(1,'Lotus', 'https://picsum.photos/id/1/400/300'),
  AppBanner(2,'Lily', 'https://picsum.photos/id/2/400/300'),
  AppBanner(3,'Sunflower', 'https://picsum.photos/id/3/400/300'),
  AppBanner(4,'Timber', 'https://picsum.photos/id/4/400/300'),

];