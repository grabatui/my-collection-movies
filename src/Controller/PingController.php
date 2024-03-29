<?php

declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PingController extends AbstractController
{
    #[Route(
        '/ping',
        name: 'ping',
        methods: 'GET',
    )]
    public function index(): Response
    {
        return new JsonResponse('Pong');
    }
}
