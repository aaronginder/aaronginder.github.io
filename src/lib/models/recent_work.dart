class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
  });
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Ingesting & Testing GDP Growth Data using dbt",
    category: "Data Engineering",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "Web Scraping Premier League Football Data using Luigi",
    category: "Data Engineering",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "Building an API to Integrate Data Quality Measures",
    category: "Software Development",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "Processing Streamed Synthetic Data into Kafka",
    category: "Data Engineering",
    image: "assets/images/work_4.png",
  ),
  RecentWork(
    id: 5,
    title: "Processing Wine Review Data using Composer in Google Cloud",
    category: "Data Engineering",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 6,
    title: "Embedding Semantic Tagging of your Deployments",
    category: "Software Development",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 7,
    title:
        "Example Terraform Modules for Deploying Infrastructure in Google Cloud",
    category: "Software Development",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 8,
    title: "3 Ways to Implement Mock in Python Unit Tests",
    category: "Data Engineering",
    image: "assets/images/work_4.png",
  ),
  RecentWork(
    id: 9,
    title: "Top 5 Things You Need to Know as a Data Engineer",
    category: "Data Engineering",
    image: "assets/images/work_4.png",
  ),
  RecentWork(
      id: 10,
      title: "Ten Pillars of Data Engineering",
      category: "Data Engineering",
      image: "assets/images/work_1.png")
];
