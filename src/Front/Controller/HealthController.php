<?php

namespace App\Front\Controller;

use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

readonly class HealthController
{
    #[Route('/health', name: 'healthcheck')]
    public function index(): JsonResponse
    {
        return new JsonResponse([
            'health' => true,
        ], Response::HTTP_OK);
    }
}
