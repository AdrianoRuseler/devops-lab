<?php
// Test PHP and ENV integration
$projectName = getenv('PROJECT_NAME') ?: 'DevOps Lab';

echo "<h1>Welcome to $projectName</h1>";
echo "<p>PHP Version: " . phpversion() . "</p>";

// Check if we are running under Nginx or Apache
if (strpos($_SERVER['SERVER_SOFTWARE'], 'nginx') !== false) {
    echo "Server: <strong>Nginx</strong>";
} else {
    echo "Server: <strong>Apache</strong>";
}
?>
