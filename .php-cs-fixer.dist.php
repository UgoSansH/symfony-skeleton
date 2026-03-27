<?php

$finder = (new PhpCsFixer\Finder())
    ->in(__DIR__)
    ->exclude('var')
    ->notPath([
        'config/bundles.php',
        'config/reference.php',
    ])
;

return new PhpCsFixer\Config()
    ->setRules([
        '@Symfony'               => true,
        'ordered_imports'        => true,
        'no_unused_imports'      => true,
        'binary_operator_spaces' => [
            'operators' => ['=' => 'align'],
        ],
        'phpdoc_align' => true,
        'array_syntax' => ['syntax' => 'short'],
    ])
    ->setFinder($finder)
;

