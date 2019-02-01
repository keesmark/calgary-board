SitemapGenerator::Sitemap.default_host = 'https://cloud-calgary.com'
SitemapGenerator::Sitemap.sitemaps_host = "https://s3-ap-northeast-1.amazonaws.com/#{ENV['S3_BUCKET_NAME']}"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.public_path = 'public/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new({
  fog_provider: 'AWS',
  fog_directory: ENV['AWS_S3_BUCKET'],
  fog_region: ENV['AWS_REGION'],
  aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
})
# Set the host name for URL creation

SitemapGenerator::Sitemap.create do
  add root_path, :priority => 1.0, :changefreq => 'daily'
  
  add classifieds_path, :priority => 1.0, :changefreq => 'daily'
  
  add policy_path, :priority => 0, :changefreq => 'never'
  
  add term_path, :priority => 0, :changefreq => 'never'
  
  add signup_path, :priority => 0.2, :changefreq => 'monthly'
  
  add login_path, :priority => 0.2, :changefreq => 'monthly'
  
  add inquiry_path, :priority => 0.2, :changefreq => 'monthly'
  
  Classified.find_each do |classified|
   add classifieds_path(classified), :lastmod => classified.updated_at
  end
end
