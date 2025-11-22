
CREATE TABLE `beds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `beds`
--

INSERT INTO `beds` (`id`, `unidade_id`, `number`, `created_at`, `updated_at`) VALUES
(502, 8, 221, '2022-01-17 14:01:00', '2022-01-17 14:01:00');

CREATE TABLE `contatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `contatos` (`id`, `number`, `created_at`, `updated_at`) VALUES
(1, '+5511947235426', '2022-06-19 19:00:00', '2022-06-19 19:00:00');

-- --------------------------------------------------------

CREATE TABLE notifications (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  payload LONGTEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'd4cb4e97-ffd1-4b46-8010-4f129730ab92', 'database', 'default', '{\"uuid\":\"d4cb4e97-ffd1-4b46-8010-4f129730ab92\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:316:\\\"\\n*__Poss\\u00edvel Admiss\\u00e3o__*\\n*Nome Paciente:* Teste Nova Api\\n*Idade:* 50\\n*Hospital Origem:* Whatsapp\\n*Linha Cuidados:* Longa Perman\\u00eancia\\n*Complexidade:* Baixa\\n*HD:* RETORNO\\n*OPS:* ELETROBRAS\\n*Dat. prov. Interna\\u00e7\\u00e3o:* 19\\/06\\/2022\\n*Hor.prov. Interna\\u00e7\\u00e3o:* 22:19\\n*Unidade:* Vila Olimpia\\n*Leito:* Leito - 10\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(213): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/app/Http/Controllers/Api/MegaApiController.php(45): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#2 /opt/lampp/crud/app/Jobs/SendMessageMegaApi.php(44): App\\Http\\Controllers\\Api\\MegaApiController->sendMessage()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMessageMegaApi->handle()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#12 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#16 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#20 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#21 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#22 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#28 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#29 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#30 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#32 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#34 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#35 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#36 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#37 {main}', '2022-06-19 23:16:07'),
(2, '32453b6d-9e70-4f78-8ee0-586d8a1beb00', 'database', 'default', '{\"uuid\":\"32453b6d-9e70-4f78-8ee0-586d8a1beb00\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:283:\\\"\\n*__Interna\\u00e7\\u00e3o__*\\n*Nome Paciente:* Teste Mega Api 4\\n*Idade:* 88\\n*Hospital Origem:* \\n*Linha Cuidados:* Longa Perman\\u00eancia\\n*Complexidade:* Alta\\n*HD:* \\n*OPS:* AMIL\\n*Data da Interna\\u00e7\\u00e3o:* 21\\/06\\/2022\\n*Hora da Interna\\u00e7\\u00e3o:* 08:45:00\\n*Unidade:* Aur\\u00e9lia\\n*Leito:* Leito - 12\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#2 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#12 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#14 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#15 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#16 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#19 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#20 {main}', '2022-06-20 16:38:55'),
(3, 'ecaaadd4-7b4b-46bb-a101-7d2f0ca94dfe', 'database', 'default', '{\"uuid\":\"ecaaadd4-7b4b-46bb-a101-7d2f0ca94dfe\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:279:\\\"\\n*__Sa\\u00edda__*\\n*Nome Paciente:* Teste Mega Api 4\\n*Idade:* 88\\n*Hospital Origem:* \\n*Linha Cuidados:* Longa Perman\\u00eancia\\n*Complexidade:* Alta\\n*HD:* \\n*OPS:* AMIL\\n*Data da Sa\\u00edda:* 20\\/06\\/2022\\n*Hora da Sa\\u00edda:* 00:00\\n*Unidade:* Aur\\u00e9lia\\n*Leito:* Leito - 12\\n*Motivo:* \\u00d3bito\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#2 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#12 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#14 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#15 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#16 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#19 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#20 {main}', '2022-06-20 16:40:28'),
(4, 'bf8e2e73-2e24-49f0-a120-0ae7b2f9402d', 'database', 'default', '{\"uuid\":\"bf8e2e73-2e24-49f0-a120-0ae7b2f9402d\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:298:\\\"\\n*__Internado Sa\\u00edda c\\/ Retorno__*\\n*Nome Paciente:* Marcio Torrigo\\n*Idade:* 52\\n*Hospital Origem:* \\n*Linha Cuidados:* Reabilita\\u00e7\\u00e3o\\n*Complexidade:* Alta\\n*HD:* SEQ\\u00dcELAS DE OUTRAS FRATURAS DO MEMBRO INFERIOR\\n*OPS:* UNIMED SEGUROS SA\\u00daDE S\\/A\\n*Unidade:* Vila Ol\\u00edmpia\\n*Leito:* Leito - 403\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#2 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#12 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#14 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#15 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#16 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#19 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#20 {main}', '2022-08-04 18:07:35'),
(5, 'cdd4fb6f-15ce-492a-82ad-3d7e78e4c7b1', 'database', 'default', '{\"uuid\":\"cdd4fb6f-15ce-492a-82ad-3d7e78e4c7b1\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:353:\\\"\\n*__Sa\\u00edda c\\/ Retorno__*\\n*Nome Paciente:* Patr\\u00edcia Lanza Trinco\\n*Idade:* 30\\n*Hospital Origem:* Bp - S\\u00e3o Paulo\\n*Linha Cuidados:* Reabilita\\u00e7\\u00e3o\\n*Complexidade:* M\\u00e9dia\\n*HD:* endocardite\\n*OPS:* VIVEST - FUNDA\\u00c7\\u00c3O CESP\\n*Data da Sa\\u00edda:* 08\\/08\\/2022\\n*Hora da Sa\\u00edda:* 09:25\\n*Unidade:* Bela Vista\\n*Leito:* Leito - 109\\n*Motivo:* Consulta M\\u00e9dica\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(213): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/app/Http/Controllers/Api/MegaApiController.php(44): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#2 /opt/lampp/crud/app/Jobs/SendMessageMegaApi.php(44): App\\Http\\Controllers\\Api\\MegaApiController->sendMessage()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMessageMegaApi->handle()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#12 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#16 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#20 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#21 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#22 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#28 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#29 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#30 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#32 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#34 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#35 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#36 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#37 {main}', '2022-08-08 15:28:38'),
(6, '103a4879-9830-46f8-9d30-3c078e06ef72', 'database', 'default', '{\"uuid\":\"103a4879-9830-46f8-9d30-3c078e06ef72\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:381:\\\"\\n*__Poss\\u00edvel Admiss\\u00e3o__*\\n*Nome Paciente:* Paulo Ant\\u00f4nio De Souza Lucante\\n*Idade:* 67\\n*Hospital Origem:* Hospital Alvorada Moema\\n*Linha Cuidados:* Reabilita\\u00e7\\u00e3o\\n*Complexidade:* M\\u00e9dia\\n*HD:* Desbridamento de ulcera sacral\\n*OPS:* VIVEST - FUNDA\\u00c7\\u00c3O CESP\\n*Dat. prov. Interna\\u00e7\\u00e3o:* 12\\/08\\/2022\\n*Hor.prov. Interna\\u00e7\\u00e3o:* 16:00\\n*Unidade:* Bela Vista\\n*Leito:* Leito - 402\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(213): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/app/Http/Controllers/Api/MegaApiController.php(44): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#2 /opt/lampp/crud/app/Jobs/SendMessageMegaApi.php(44): App\\Http\\Controllers\\Api\\MegaApiController->sendMessage()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMessageMegaApi->handle()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#12 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#16 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#20 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#21 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#22 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#28 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#29 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#30 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#32 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#34 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#35 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#36 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#37 {main}', '2022-08-11 22:10:35'),
(7, '9ac7fde2-905d-4556-9567-b4dcc6108b2c', 'database', 'default', '{\"uuid\":\"9ac7fde2-905d-4556-9567-b4dcc6108b2c\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:390:\\\"\\n*__Altera\\u00e7\\u00e3o Poss\\u00edvel Admiss\\u00e3o__*\\n*Nome Paciente:* Eliane Ninomiya Martignago\\n*Idade:* 53\\n*Hospital Origem:* Hospital Haoc Vergueiro\\n*Linha Cuidados:* Longa Perman\\u00eancia\\n*Complexidade:* M\\u00e9dia\\n*HD:* Quadro confusional\\n*OPS:* VIVEST - FUNDA\\u00c7\\u00c3O CESP\\n*Dat. prov. Interna\\u00e7\\u00e3o:* 17\\/08\\/2022\\n*Hor.prov. Interna\\u00e7\\u00e3o:* 15:00:00\\n*Unidade:* Alto da Boa Vista\\n*Leito:* Leito - 123\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(213): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/app/Http/Controllers/Api/MegaApiController.php(44): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#2 /opt/lampp/crud/app/Jobs/SendMessageMegaApi.php(44): App\\Http\\Controllers\\Api\\MegaApiController->sendMessage()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMessageMegaApi->handle()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#12 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#16 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#20 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#21 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#22 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#28 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#29 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#30 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#32 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#34 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#35 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#36 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#37 {main}', '2022-08-16 16:30:03'),
(8, 'ef4fd1b2-398d-4956-aad4-5475358d4a77', 'database', 'default', '{\"uuid\":\"ef4fd1b2-398d-4956-aad4-5475358d4a77\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:322:\\\"\\n*__Interna\\u00e7\\u00e3o__*\\n*Nome Paciente:* Kazuko Koga\\n*Idade:* 81\\n*Hospital Origem:* Hospital Santa Cruz\\n*Linha Cuidados:* Reabilita\\u00e7\\u00e3o\\n*Complexidade:* M\\u00e9dia\\n*HD:* Atropelamento\\n*OPS:* PARTICULAR PREMIUM CARE\\n*Data da Interna\\u00e7\\u00e3o:* 24\\/08\\/2022\\n*Hora da Interna\\u00e7\\u00e3o:* 20:06\\n*Unidade:* Morumbi\\n*Leito:* Leito - 6\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(213): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/app/Http/Controllers/Api/MegaApiController.php(44): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}()\n#2 /opt/lampp/crud/app/Jobs/SendMessageMegaApi.php(44): App\\Http\\Controllers\\Api\\MegaApiController->sendMessage()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMessageMegaApi->handle()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#12 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#14 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#15 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#16 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#20 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#21 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#22 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#23 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#26 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#27 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#28 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#29 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#30 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#31 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#32 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#33 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#34 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#35 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#36 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#37 {main}', '2022-08-25 02:07:28'),
(9, '30093d1c-0abc-40b1-b9bd92f78135e511', 'database', 'default', '{\"uuid\":\"30093d1c-0abc-40b1-b9bd-92f78135e511\",\"displayName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMessageMegaApi\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\SendMessageMegaApi\\\":13:{s:11:\\\"\\u0000*\\u0000instance\\\";i:15662;s:8:\\\"\\u0000*\\u0000token\\\";s:15:\\\"M_0mos8nDpzcIrM\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:333:\\\"\\n*__Poss\\u00edvel Admiss\\u00e3o__*\\n*Nome Paciente:* Maria Crede Do Nascimento\\n*Idade:* 81\\n*Hospital Origem:* Clinica Premium Care - Bela Vista\\n*Linha Cuidados:* Paliativo\\n*Complexidade:* M\\u00e9dia\\n*HD:* \\n*OPS:* CASSI\\n*Dat. prov. Interna\\u00e7\\u00e3o:* 29\\/08\\/2022\\n*Hor.prov. Interna\\u00e7\\u00e3o:* 12:00\\n*Unidade:* Vila Olimpia\\n*Leito:* Leito - 106\\n            \\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMessageMegaApi has been attempted too many times or run too long. The job may have previously timed out. in /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:750\nStack trace:\n#0 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(504): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#1 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(418): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#2 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#3 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#4 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#5 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#6 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#9 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#10 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#11 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#12 /opt/lampp/crud/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#13 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#14 /opt/lampp/crud/vendor/symfony/console/Application.php(1005): Illuminate\\Console\\Command->run()\n#15 /opt/lampp/crud/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#16 /opt/lampp/crud/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#17 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#18 /opt/lampp/crud/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#19 /opt/lampp/crud/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#20 {main}', '2022-08-29 21:42:42');
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `leitos`
--

CREATE TABLE `leitos` (
  `id` int(11) NOT NULL,
  `leito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `leitos`
--

INSERT INTO `leitos` (`id`, `leito`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `linha_cuidados`
--

CREATE TABLE `linha_cuidados` (
  `id` int(11) NOT NULL,
  `linha` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `linha_cuidados`
--

INSERT INTO `linha_cuidados` (`id`, `linha`) VALUES
(1, 'Reabilitação'),
(2, 'Longa Permanência'),
(3, 'Paliativo');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_07_131317_create_pacientes_table', 1),
(6, '2022_06_13_223005_create_contatos_table', 2),
(7, '2022_06_13_223037_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `operadoras`
--

CREATE TABLE `operadoras` (
  `id` int(11) NOT NULL,
  `operadora` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `operadoras`
--

INSERT INTO `operadoras` (`id`, `operadora`) VALUES
(1, 'ABAS 15'),
(2, 'ABET ASSOC BRASILEIRA DOS EMPREGADOS EM TELECOMUNICACOES'),
(3, 'AFRESP'),
(4, 'AGF SAUDE - ALLIANZ SAÚDE'),
(5, 'AMIL'),
(6, 'ASSEFAZ'),
(7, 'ASSOC UNIFICADA PAULISTA DE ENSI RENOVADO OBJETIVO- ASSUPERO'),
(8, 'BANCO CENTRAL'),
(9, 'BLUE LIFE'),
(10, 'BRADESCO SAUDE'),
(11, 'CABESP'),
(12, 'CAIXA ECONOMICA FEDERAL'),
(13, 'CAMED'),
(14, 'CAPESESP'),
(15, 'CARE PLUS'),
(16, 'CASF-CAIXA DE ASSIST DOS FUNCIONARIOS DO BANCO AMAZONIA'),
(17, 'CASSI'),
(18, 'CENTRAL NACIONAL UNIMED COOPERATIVA CENTRAL'),
(19, 'CETESB'),
(20, 'CNEN - COMISSAO NACIONAL DE ENERGIA NUCLEAR'),
(21, 'CONAB'),
(22, 'CORREIOS'),
(23, 'CVRD'),
(24, 'ECONOMUS'),
(25, 'ELETROBRAS'),
(26, 'EMBRAER'),
(27, 'EMBRAPA'),
(28, 'EMBRATEL'),
(29, 'FACHESF'),
(30, 'FASSINCRA'),
(31, 'FUSEX'),
(32, 'GAMA SAUDE - CAMPO BELO'),
(33, 'GEAP'),
(34, 'GOLDEN CROSS'),
(35, 'HSBC'),
(36, 'INFRAERO'),
(37, 'ITAUSEG SAUDE - HOSPITAU'),
(38, 'LIFE EMPRESARIAL SAUDE'),
(39, 'MAPFRE SAUDE LTDA'),
(40, 'MARINHA DO BRASIL'),
(41, 'MEDIAL SAUDE'),
(42, 'MEDISERVICE'),
(43, 'METRUS - INSTITUTO DE SEGURIDADE SOCIAL'),
(44, 'NOTREDAME / INTERMEDICA SAUDE'),
(45, 'OMINT SERVICOS DE SAUDE LTDA'),
(46, 'PARTICULAR PREMIUM CARE'),
(47, 'PETROBRAS'),
(48, 'PETROBRAS DISTRIBUIDORA - BR'),
(49, 'PLANSFER'),
(50, 'PLASAC PLANO DE SAUDE LTDA'),
(51, 'PORTO SEGURO'),
(52, 'PORTOMED - PORTO SEGUROS SERVICOS MEDICOS S/A'),
(53, 'POSTAL SAÚDE'),
(54, 'PREVENT SENIOR PRIVATE OPERADORA DE SAUDE LTDA'),
(55, 'PREVIMINAS SAUDE'),
(56, 'PRODESP - TECNOLOGIA DA INFORMACAO'),
(57, 'SABESPREV'),
(58, 'SAMI ASSISTENCIA MEDICA LTDA'),
(59, 'SERPRO'),
(60, 'SOCIEDADE BENEFICENTE ISRAELITA HOSPITAL ALBERT EINSTEIN'),
(61, 'SOMPO SAUDE'),
(62, 'SUL AMERICA SAUDE'),
(63, 'SUS - AMBULATORIO'),
(64, 'SUS - INTERNACAO'),
(65, 'UNAFISCO SAUDE'),
(66, 'UNIMED FESP - FEDERAÇÃO DAS UNIMEDS DO ESTADO DE SÃO PAULO'),
(67, 'UNIMED LONDRINA'),
(68, 'UNIMED PORTO VELHO - SOCIEDADE COOPERATIVA MEDICA LTDA'),
(69, 'UNIMED RIO'),
(70, 'UNIMED RIO COOP TRAB MED DO RIO DE JANEIRO'),
(71, 'UNIMED SEGUROS SAÚDE S/A'),
(72, 'UNIVERSAL ASSISTANCE - ASSISTENCIA AO VIANJANTE'),
(73, 'VALE S.A'),
(74, 'VIVEST - FUNDAÇÃO CESP'),
(81, 'AMHA SAÚDE S/A'),
(87, 'CAIXA SEGURADORA ESPECIALIZADA EM SAUDE'),
(88, 'BRADESCO SAUDE OPERADORA DE PLANOS S/A'),
(89, 'CUIDAR.ME SAUDE LTDA');

-- --------------------------------------------------------

--
-- Structure de la table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataNasc` date DEFAULT NULL,
  `idade` int(11) NOT NULL,
  `hospitalOrig` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ops` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complexidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linhaCuidados` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leito` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataIntern` date NOT NULL,
  `horaIntern` time NOT NULL,
  `acompanhante` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `necessidadeEspecial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descricaoEspecial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataSaida` date DEFAULT NULL,
  `horaSaida` time DEFAULT NULL,
  `justificativa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pacientes`
--

INSERT INTO `pacientes` (`id`, `id_user`, `nome`, `dataNasc`, `idade`, `hospitalOrig`, `ops`, `hd`, `complexidade`, `linhaCuidados`, `unidade`, `leito`, `dataIntern`, `horaIntern`, `acompanhante`, `necessidadeEspecial`, `descricaoEspecial`, `status`, `dataSaida`, `horaSaida`, `justificativa`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aline Zilda Mattos Chel Pereira Delbone', NULL, 29, '', 'BRADESCO SAUDE', 'POLINEUROPATIA NÃO ESPECIFICADA', 'Média', 'Reabilitação', 'Bela Vista', '106', '2022-02-19', '00:04:00', 'Não', 'Não', NULL, 'Internado', '2022-09-16', '09:00:00', 'Selecione o Motivo da Alta', '2022-02-19 03:04:00', '2022-09-16 20:43:34'),
(2, 1, 'Alvaro De Araujo Valenca', NULL, 99, '', 'CASSI', 'BRONCOPNEUMONIA NÃO ESPECIFICADA', 'Média', 'Paliativo', 'Campo Belo', '18', '2022-02-19', '00:04:00', 'Não', 'Não', NULL, 'Saída', '2023-01-12', '22:00:00', 'Óbito', '2022-02-19 03:04:00', '2023-01-13 14:49:25'),
(1001, 2, 'Cyro Henrique Machado Jascoski', NULL, 34, 'Hospital Ipiranga', 'SUL AMERICA SAUDE', 'Intoxicação exógena benzodiazepínico', 'Média', 'Reabilitação', 'Bela Vista', '301', '2023-07-08', '13:01:00', 'Não', 'Não', NULL, 'Possível Admissão', NULL, NULL, NULL, NULL, '2023-08-08 15:04:08'),
(1002, 2, 'Maria Thereza De Castilho Freire', NULL, 100, 'Santa Catarina', 'CASSI', 'ITU', 'Média', 'Paliativo', 'Itaim Bibi', '210', '2023-07-11', '14:01:00', 'Não', 'Não', NULL, 'Possível Admissão', NULL, NULL, NULL, NULL, '2023-08-08 15:01:54');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `unidade` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unidades`
--

INSERT INTO `unidades` (`id`, `unidade`, `sigla`) VALUES
(8, 'Alto da Boa Vista', 'ABV');
ALTER TABLE unidades ADD COLUMN capacidade INT NULL DEFAULT NULL;
-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `departamento`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@premiumcare.com.br', '2021-12-07 13:45:00', 'Premium#C@re', 'admin', 'abcd', '2021-12-07 13:45:00', '2021-12-07 13:45:00'),
(2, 'Juliana Moraes', 'jmoraes@premiumcare.com.br', '2021-12-07 17:21:00', 'PremiumCare#@', 'comercial', 'abcd', '2021-12-07 17:21:00', '2021-12-07 17:21:00'),
(4, 'Ariane Roque', 'aroque@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'comercial', 'abc', '2021-12-28 12:00:00', NULL),
(8, 'Karen Alencar', 'kalencar@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'comercial', 'abc', '2021-12-28 12:00:00', NULL),
(10, 'Lucinea Couto', 'lcouto@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'comercial', 'abc', '2021-12-28 12:00:00', NULL),
(11, 'Sonia Sena', 'ssena@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'comercial', 'abc', '2021-12-28 12:00:00', NULL),
(14, 'Andrea Rossi', 'arossi@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'administrativo', 'abc', '2021-12-28 12:00:00', NULL),
(19, 'Eunice', 'eunice.faturamento@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'administrativo', 'abc', '2021-12-28 12:00:00', NULL),
(20, 'Pedro Cunha', 'pcunha@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'comercial', 'abc', '2021-12-28 12:00:00', NULL),
(21, 'Paulo Cunha', 'pauloti@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'administrativo', 'abc', '2021-12-28 12:00:00', NULL),
(22, 'Camila Lopes', 'clopes@premiumcare.com.br', NULL, 'PremiumCare#@', 'comercial', NULL, '2021-02-21 14:09:00', '2021-02-21 14:09:00'),
(24, 'Lucimara Lima', 'llima@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abc', '2022-03-10 17:53:00', NULL),
(27, 'Jessica Silva', 'administrativo-vilaolimpia@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abc', '2022-03-10 18:04:00', NULL),
(28, 'Angelita Oliveira', 'aoliveira@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abc', '2022-03-10 19:03:00', NULL),
(30, 'Carla Alves', 'calves@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(31, 'Rodrigo', 'rgalhiego@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(33, 'Fabiani Dias', 'fdias@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(34, 'Andrea Souza', 'asouza@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(35, 'Gustavo Alves', 'galves@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(36, 'Camila Cardoso', 'scih@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', NULL, '2022-03-24 18:52:00', '2022-03-24 18:52:00'),
(38, 'Comercial', 'ti@premiumcare.com.br', NULL, 'Premium@2022', 'administrativo', 'abcd', NULL, NULL),
(40, 'Marcelo-Adm', 'paulo.ti@premiumcare.com.br', NULL, 'Premium@2022', 'comercial', 'abcd', NULL, NULL),
(43, 'Mirian Galantini', 'mgalantini@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(44, 'Nutricao ABV', 'nutricao-altodaboavista@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abc', '2022-07-05 17:53:00', NULL),
(46, 'TATIANNA DESTACIO', 'tdestacio@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(47, 'ADMMINISTRATIVO ABV', 'administrativo-altodaboavista@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abd', '2022-03-11 12:56:00', NULL),
(50, 'Daniela Muniz', 'dmuniz@premiumcare.com.br', '2021-12-28 12:00:00', 'PremiumCare#@', 'administrativo', 'abc', '2021-12-28 12:00:00', NULL),
(51, 'Julia-CB', 'administrativo-campobelo@premiumcare.com.br', NULL, 'PremiumCare#@', 'administrativo', 'abc', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leitos_unidade_id_foreign` (`unidade_id`);

--
-- Index pour la table `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `leitos`
--
ALTER TABLE `leitos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `linha_cuidados`
--
ALTER TABLE `linha_cuidados`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `operadoras`
--
ALTER TABLE `operadoras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pacientes_id_user_foreign` (`id_user`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT pour la table `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2702;

--
-- AUTO_INCREMENT pour la table `leitos`
--
ALTER TABLE `leitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `linha_cuidados`
--
ALTER TABLE `linha_cuidados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `operadoras`
--
ALTER TABLE `operadoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `leitos_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
