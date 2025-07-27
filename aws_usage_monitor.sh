#!/bin/bash

# ----------- CONFIGURATION -----------
s3_bucket="ssstech-porfolio-website-bucket"
s3_threshold_gb=5             # AWS S3 Free Tier: 5 GB
cloudfront_threshold_gb=1     # AWS Free Tier for data transfer: 1 GB/month
start_date=$(date -d "-30 days" +%F)
end_date=$(date +%F)

# ----------- S3 STORAGE CHECK -----------
echo "Ì¥ç Checking S3 storage for bucket: $s3_bucket"

s3_bytes=$(aws s3api list-objects --bucket "$s3_bucket" --output json \
  --query "sum(Contents[].Size)" 2>/dev/null)

if [ -z "$s3_bytes" ] || [ "$s3_bytes" == "null" ]; then
  s3_bytes=0
fi

s3_gb=$(echo "scale=2; $s3_bytes / (1024 * 1024 * 1024)" | bc)

echo "Ì≥¶ S3 Usage: $s3_gb GB / $s3_threshold_gb GB Free Tier"

if (( $(echo "$s3_gb > $s3_threshold_gb" | bc -l) )); then
  echo "‚ö†Ô∏è S3 WARNING: You have exceeded the Free Tier for S3 storage!"
else
  echo "‚úÖ S3 storage is within Free Tier."
fi

# ----------- CLOUDFRONT TRAFFIC USAGE (Cost Explorer) -----------
echo -e "\nÌ¥ç Checking CloudFront traffic via Cost Explorer..."

cf_cost=$(aws ce get-cost-and-usage \
  --time-period Start=$start_date,End=$end_date \
  --granularity=MONTHLY \
  --metrics "UsageQuantity" \
  --filter '{ "Dimensions": { "Key": "SERVICE", "Values": ["Amazon CloudFront"] } }' \
  --query "ResultsByTime[0].Total.UsageQuantity.Amount" \
  --output text 2>/dev/null)

if [ -z "$cf_cost" ]; then
  cf_cost=0
fi

echo "Ì∫¶ CloudFront Transfer: $cf_cost GB / $cloudfront_threshold_gb GB Free Tier"

if (( $(echo "$cf_cost > $cloudfront_threshold_gb" | bc -l) )); then
  echo "‚ö†Ô∏è CLOUDFRONT WARNING: Likely to be billed for excess data transfer!"
else
  echo "‚úÖ CloudFront usage is within Free Tier."
fi
