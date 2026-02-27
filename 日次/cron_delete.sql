-- ============================================
-- 🗑️ 古いデータ削除ジョブ Cron 登録
-- ============================================
-- 5日前より古いデータを削除して、Supabase無料枠のストレージを節約
-- 毎日午前12時に実行

SELECT cron.schedule(
  'daily_delete_old_data',
  '0 12 * * *',
$$
  SELECT net.http_post(
    url := 'https://yhkbewmgnufijsikruio.supabase.co/functions/v1/delete-old-data',
    headers := jsonb_build_object(
      'Content-Type', 'application/json',
      'Authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloa2Jld21nbnVmaWpzaWtydWlvIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1ODk2NzQzMSwiZXhwIjoyMDc0NTQzNDMxfQ.DgLf-smYCDdCSyPFjbfrbYE55hF94I2bXdynW8JBC00'
    ),
    body := '{}'::jsonb
  );
$$
);

-- ============================================
-- 📋 Cron ジョブの確認・管理用コマンド
-- ============================================

-- 登録済みのCronジョブを確認
-- SELECT * FROM cron.job;

-- 特定のCronジョブを削除する場合
-- SELECT cron.unschedule('daily_delete_old_data');

-- Cronジョブの実行履歴を確認
-- SELECT * FROM cron.job_run_details ORDER BY start_time DESC LIMIT 10;
