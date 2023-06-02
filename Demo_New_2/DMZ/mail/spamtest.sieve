require "spamtest";
if header :contains "X-Spam-Flag" "YES" {
    fileinto "Junk";
    stop;
}