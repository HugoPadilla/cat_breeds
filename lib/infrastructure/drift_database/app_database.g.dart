// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CatBreedsTableTable extends CatBreedsTable
    with TableInfo<$CatBreedsTableTable, CatBreedsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;

  $CatBreedsTableTable(this.attachedDatabase, [this._alias]);

  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _temperamentMeta = const VerificationMeta(
    'temperament',
  );
  @override
  late final GeneratedColumn<String> temperament = GeneratedColumn<String>(
    'temperament',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _originMeta = const VerificationMeta('origin');
  @override
  late final GeneratedColumn<String> origin = GeneratedColumn<String>(
    'origin',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lifeSpanMeta = const VerificationMeta(
    'lifeSpan',
  );
  @override
  late final GeneratedColumn<String> lifeSpan = GeneratedColumn<String>(
    'life_span',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _adaptabilityMeta = const VerificationMeta(
    'adaptability',
  );
  @override
  late final GeneratedColumn<int> adaptability = GeneratedColumn<int>(
    'adaptability',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _affectionLevelMeta = const VerificationMeta(
    'affectionLevel',
  );
  @override
  late final GeneratedColumn<int> affectionLevel = GeneratedColumn<int>(
    'affection_level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _childFriendlyMeta = const VerificationMeta(
    'childFriendly',
  );
  @override
  late final GeneratedColumn<int> childFriendly = GeneratedColumn<int>(
    'child_friendly',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dogFriendlyMeta = const VerificationMeta(
    'dogFriendly',
  );
  @override
  late final GeneratedColumn<int> dogFriendly = GeneratedColumn<int>(
    'dog_friendly',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _energyLevelMeta = const VerificationMeta(
    'energyLevel',
  );
  @override
  late final GeneratedColumn<int> energyLevel = GeneratedColumn<int>(
    'energy_level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _groomingMeta = const VerificationMeta(
    'grooming',
  );
  @override
  late final GeneratedColumn<int> grooming = GeneratedColumn<int>(
    'grooming',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _healthIssuesMeta = const VerificationMeta(
    'healthIssues',
  );
  @override
  late final GeneratedColumn<int> healthIssues = GeneratedColumn<int>(
    'health_issues',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intelligenceMeta = const VerificationMeta(
    'intelligence',
  );
  @override
  late final GeneratedColumn<int> intelligence = GeneratedColumn<int>(
    'intelligence',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sheddingLevelMeta = const VerificationMeta(
    'sheddingLevel',
  );
  @override
  late final GeneratedColumn<int> sheddingLevel = GeneratedColumn<int>(
    'shedding_level',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _socialNeedsMeta = const VerificationMeta(
    'socialNeeds',
  );
  @override
  late final GeneratedColumn<int> socialNeeds = GeneratedColumn<int>(
    'social_needs',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _strangerFriendlyMeta = const VerificationMeta(
    'strangerFriendly',
  );
  @override
  late final GeneratedColumn<int> strangerFriendly = GeneratedColumn<int>(
    'stranger_friendly',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vocalisationMeta = const VerificationMeta(
    'vocalisation',
  );
  @override
  late final GeneratedColumn<int> vocalisation = GeneratedColumn<int>(
    'vocalisation',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _experimentalMeta = const VerificationMeta(
    'experimental',
  );
  @override
  late final GeneratedColumn<int> experimental = GeneratedColumn<int>(
    'experimental',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hairlessMeta = const VerificationMeta(
    'hairless',
  );
  @override
  late final GeneratedColumn<int> hairless = GeneratedColumn<int>(
    'hairless',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _naturalMeta = const VerificationMeta(
    'natural',
  );
  @override
  late final GeneratedColumn<int> natural = GeneratedColumn<int>(
    'natural',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rareMeta = const VerificationMeta('rare');
  @override
  late final GeneratedColumn<int> rare = GeneratedColumn<int>(
    'rare',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rexMeta = const VerificationMeta('rex');
  @override
  late final GeneratedColumn<int> rex = GeneratedColumn<int>(
    'rex',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _suppressedTailMeta = const VerificationMeta(
    'suppressedTail',
  );
  @override
  late final GeneratedColumn<int> suppressedTail = GeneratedColumn<int>(
    'suppressed_tail',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _shortLegsMeta = const VerificationMeta(
    'shortLegs',
  );
  @override
  late final GeneratedColumn<int> shortLegs = GeneratedColumn<int>(
    'short_legs',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _wikipediaUrlMeta = const VerificationMeta(
    'wikipediaUrl',
  );
  @override
  late final GeneratedColumn<String> wikipediaUrl = GeneratedColumn<String>(
    'wikipedia_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hypoallergenicMeta = const VerificationMeta(
    'hypoallergenic',
  );
  @override
  late final GeneratedColumn<int> hypoallergenic = GeneratedColumn<int>(
    'hypoallergenic',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _referenceImageIdMeta = const VerificationMeta(
    'referenceImageId',
  );
  @override
  late final GeneratedColumn<String> referenceImageId = GeneratedColumn<String>(
    'reference_image_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );

  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    temperament,
    origin,
    description,
    lifeSpan,
    imageUrl,
    adaptability,
    affectionLevel,
    childFriendly,
    dogFriendly,
    energyLevel,
    grooming,
    healthIssues,
    intelligence,
    sheddingLevel,
    socialNeeds,
    strangerFriendly,
    vocalisation,
    experimental,
    hairless,
    natural,
    rare,
    rex,
    suppressedTail,
    shortLegs,
    wikipediaUrl,
    hypoallergenic,
    referenceImageId,
  ];

  @override
  String get aliasedName => _alias ?? actualTableName;

  @override
  String get actualTableName => $name;
  static const String $name = 'cat_breeds_table';

  @override
  VerificationContext validateIntegrity(
    Insertable<CatBreedsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('temperament')) {
      context.handle(
        _temperamentMeta,
        temperament.isAcceptableOrUnknown(
          data['temperament']!,
          _temperamentMeta,
        ),
      );
    }
    if (data.containsKey('origin')) {
      context.handle(
        _originMeta,
        origin.isAcceptableOrUnknown(data['origin']!, _originMeta),
      );
    } else if (isInserting) {
      context.missing(_originMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('life_span')) {
      context.handle(
        _lifeSpanMeta,
        lifeSpan.isAcceptableOrUnknown(data['life_span']!, _lifeSpanMeta),
      );
    } else if (isInserting) {
      context.missing(_lifeSpanMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('adaptability')) {
      context.handle(
        _adaptabilityMeta,
        adaptability.isAcceptableOrUnknown(
          data['adaptability']!,
          _adaptabilityMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_adaptabilityMeta);
    }
    if (data.containsKey('affection_level')) {
      context.handle(
        _affectionLevelMeta,
        affectionLevel.isAcceptableOrUnknown(
          data['affection_level']!,
          _affectionLevelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_affectionLevelMeta);
    }
    if (data.containsKey('child_friendly')) {
      context.handle(
        _childFriendlyMeta,
        childFriendly.isAcceptableOrUnknown(
          data['child_friendly']!,
          _childFriendlyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_childFriendlyMeta);
    }
    if (data.containsKey('dog_friendly')) {
      context.handle(
        _dogFriendlyMeta,
        dogFriendly.isAcceptableOrUnknown(
          data['dog_friendly']!,
          _dogFriendlyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dogFriendlyMeta);
    }
    if (data.containsKey('energy_level')) {
      context.handle(
        _energyLevelMeta,
        energyLevel.isAcceptableOrUnknown(
          data['energy_level']!,
          _energyLevelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_energyLevelMeta);
    }
    if (data.containsKey('grooming')) {
      context.handle(
        _groomingMeta,
        grooming.isAcceptableOrUnknown(data['grooming']!, _groomingMeta),
      );
    } else if (isInserting) {
      context.missing(_groomingMeta);
    }
    if (data.containsKey('health_issues')) {
      context.handle(
        _healthIssuesMeta,
        healthIssues.isAcceptableOrUnknown(
          data['health_issues']!,
          _healthIssuesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_healthIssuesMeta);
    }
    if (data.containsKey('intelligence')) {
      context.handle(
        _intelligenceMeta,
        intelligence.isAcceptableOrUnknown(
          data['intelligence']!,
          _intelligenceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_intelligenceMeta);
    }
    if (data.containsKey('shedding_level')) {
      context.handle(
        _sheddingLevelMeta,
        sheddingLevel.isAcceptableOrUnknown(
          data['shedding_level']!,
          _sheddingLevelMeta,
        ),
      );
    }
    if (data.containsKey('social_needs')) {
      context.handle(
        _socialNeedsMeta,
        socialNeeds.isAcceptableOrUnknown(
          data['social_needs']!,
          _socialNeedsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_socialNeedsMeta);
    }
    if (data.containsKey('stranger_friendly')) {
      context.handle(
        _strangerFriendlyMeta,
        strangerFriendly.isAcceptableOrUnknown(
          data['stranger_friendly']!,
          _strangerFriendlyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_strangerFriendlyMeta);
    }
    if (data.containsKey('vocalisation')) {
      context.handle(
        _vocalisationMeta,
        vocalisation.isAcceptableOrUnknown(
          data['vocalisation']!,
          _vocalisationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_vocalisationMeta);
    }
    if (data.containsKey('experimental')) {
      context.handle(
        _experimentalMeta,
        experimental.isAcceptableOrUnknown(
          data['experimental']!,
          _experimentalMeta,
        ),
      );
    }
    if (data.containsKey('hairless')) {
      context.handle(
        _hairlessMeta,
        hairless.isAcceptableOrUnknown(data['hairless']!, _hairlessMeta),
      );
    }
    if (data.containsKey('natural')) {
      context.handle(
        _naturalMeta,
        natural.isAcceptableOrUnknown(data['natural']!, _naturalMeta),
      );
    }
    if (data.containsKey('rare')) {
      context.handle(
        _rareMeta,
        rare.isAcceptableOrUnknown(data['rare']!, _rareMeta),
      );
    }
    if (data.containsKey('rex')) {
      context.handle(
        _rexMeta,
        rex.isAcceptableOrUnknown(data['rex']!, _rexMeta),
      );
    }
    if (data.containsKey('suppressed_tail')) {
      context.handle(
        _suppressedTailMeta,
        suppressedTail.isAcceptableOrUnknown(
          data['suppressed_tail']!,
          _suppressedTailMeta,
        ),
      );
    }
    if (data.containsKey('short_legs')) {
      context.handle(
        _shortLegsMeta,
        shortLegs.isAcceptableOrUnknown(data['short_legs']!, _shortLegsMeta),
      );
    }
    if (data.containsKey('wikipedia_url')) {
      context.handle(
        _wikipediaUrlMeta,
        wikipediaUrl.isAcceptableOrUnknown(
          data['wikipedia_url']!,
          _wikipediaUrlMeta,
        ),
      );
    }
    if (data.containsKey('hypoallergenic')) {
      context.handle(
        _hypoallergenicMeta,
        hypoallergenic.isAcceptableOrUnknown(
          data['hypoallergenic']!,
          _hypoallergenicMeta,
        ),
      );
    }
    if (data.containsKey('reference_image_id')) {
      context.handle(
        _referenceImageIdMeta,
        referenceImageId.isAcceptableOrUnknown(
          data['reference_image_id']!,
          _referenceImageIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};

  @override
  CatBreedsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CatBreedsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      temperament: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}temperament'],
      ),
      origin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}origin'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      lifeSpan: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}life_span'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      adaptability: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}adaptability'],
      )!,
      affectionLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}affection_level'],
      )!,
      childFriendly: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}child_friendly'],
      )!,
      dogFriendly: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}dog_friendly'],
      )!,
      energyLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}energy_level'],
      )!,
      grooming: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}grooming'],
      )!,
      healthIssues: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}health_issues'],
      )!,
      intelligence: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}intelligence'],
      )!,
      sheddingLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}shedding_level'],
      ),
      socialNeeds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}social_needs'],
      )!,
      strangerFriendly: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stranger_friendly'],
      )!,
      vocalisation: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vocalisation'],
      )!,
      experimental: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}experimental'],
      ),
      hairless: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hairless'],
      ),
      natural: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}natural'],
      ),
      rare: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rare'],
      ),
      rex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rex'],
      ),
      suppressedTail: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}suppressed_tail'],
      ),
      shortLegs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}short_legs'],
      ),
      wikipediaUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}wikipedia_url'],
      ),
      hypoallergenic: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hypoallergenic'],
      ),
      referenceImageId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reference_image_id'],
      ),
    );
  }

  @override
  $CatBreedsTableTable createAlias(String alias) {
    return $CatBreedsTableTable(attachedDatabase, alias);
  }
}

class CatBreedsTableData extends DataClass
    implements Insertable<CatBreedsTableData> {
  final String id;
  final String name;
  final String? temperament;
  final String origin;
  final String description;
  final String lifeSpan;
  final String? imageUrl;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int? sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  final int? suppressedTail;
  final int? shortLegs;
  final String? wikipediaUrl;
  final int? hypoallergenic;
  final String? referenceImageId;

  const CatBreedsTableData({
    required this.id,
    required this.name,
    this.temperament,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    this.imageUrl,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
  });

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || temperament != null) {
      map['temperament'] = Variable<String>(temperament);
    }
    map['origin'] = Variable<String>(origin);
    map['description'] = Variable<String>(description);
    map['life_span'] = Variable<String>(lifeSpan);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    map['adaptability'] = Variable<int>(adaptability);
    map['affection_level'] = Variable<int>(affectionLevel);
    map['child_friendly'] = Variable<int>(childFriendly);
    map['dog_friendly'] = Variable<int>(dogFriendly);
    map['energy_level'] = Variable<int>(energyLevel);
    map['grooming'] = Variable<int>(grooming);
    map['health_issues'] = Variable<int>(healthIssues);
    map['intelligence'] = Variable<int>(intelligence);
    if (!nullToAbsent || sheddingLevel != null) {
      map['shedding_level'] = Variable<int>(sheddingLevel);
    }
    map['social_needs'] = Variable<int>(socialNeeds);
    map['stranger_friendly'] = Variable<int>(strangerFriendly);
    map['vocalisation'] = Variable<int>(vocalisation);
    if (!nullToAbsent || experimental != null) {
      map['experimental'] = Variable<int>(experimental);
    }
    if (!nullToAbsent || hairless != null) {
      map['hairless'] = Variable<int>(hairless);
    }
    if (!nullToAbsent || natural != null) {
      map['natural'] = Variable<int>(natural);
    }
    if (!nullToAbsent || rare != null) {
      map['rare'] = Variable<int>(rare);
    }
    if (!nullToAbsent || rex != null) {
      map['rex'] = Variable<int>(rex);
    }
    if (!nullToAbsent || suppressedTail != null) {
      map['suppressed_tail'] = Variable<int>(suppressedTail);
    }
    if (!nullToAbsent || shortLegs != null) {
      map['short_legs'] = Variable<int>(shortLegs);
    }
    if (!nullToAbsent || wikipediaUrl != null) {
      map['wikipedia_url'] = Variable<String>(wikipediaUrl);
    }
    if (!nullToAbsent || hypoallergenic != null) {
      map['hypoallergenic'] = Variable<int>(hypoallergenic);
    }
    if (!nullToAbsent || referenceImageId != null) {
      map['reference_image_id'] = Variable<String>(referenceImageId);
    }
    return map;
  }

  CatBreedsTableCompanion toCompanion(bool nullToAbsent) {
    return CatBreedsTableCompanion(
      id: Value(id),
      name: Value(name),
      temperament: temperament == null && nullToAbsent
          ? const Value.absent()
          : Value(temperament),
      origin: Value(origin),
      description: Value(description),
      lifeSpan: Value(lifeSpan),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      adaptability: Value(adaptability),
      affectionLevel: Value(affectionLevel),
      childFriendly: Value(childFriendly),
      dogFriendly: Value(dogFriendly),
      energyLevel: Value(energyLevel),
      grooming: Value(grooming),
      healthIssues: Value(healthIssues),
      intelligence: Value(intelligence),
      sheddingLevel: sheddingLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(sheddingLevel),
      socialNeeds: Value(socialNeeds),
      strangerFriendly: Value(strangerFriendly),
      vocalisation: Value(vocalisation),
      experimental: experimental == null && nullToAbsent
          ? const Value.absent()
          : Value(experimental),
      hairless: hairless == null && nullToAbsent
          ? const Value.absent()
          : Value(hairless),
      natural: natural == null && nullToAbsent
          ? const Value.absent()
          : Value(natural),
      rare: rare == null && nullToAbsent ? const Value.absent() : Value(rare),
      rex: rex == null && nullToAbsent ? const Value.absent() : Value(rex),
      suppressedTail: suppressedTail == null && nullToAbsent
          ? const Value.absent()
          : Value(suppressedTail),
      shortLegs: shortLegs == null && nullToAbsent
          ? const Value.absent()
          : Value(shortLegs),
      wikipediaUrl: wikipediaUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(wikipediaUrl),
      hypoallergenic: hypoallergenic == null && nullToAbsent
          ? const Value.absent()
          : Value(hypoallergenic),
      referenceImageId: referenceImageId == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceImageId),
    );
  }

  factory CatBreedsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CatBreedsTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      temperament: serializer.fromJson<String?>(json['temperament']),
      origin: serializer.fromJson<String>(json['origin']),
      description: serializer.fromJson<String>(json['description']),
      lifeSpan: serializer.fromJson<String>(json['lifeSpan']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      adaptability: serializer.fromJson<int>(json['adaptability']),
      affectionLevel: serializer.fromJson<int>(json['affectionLevel']),
      childFriendly: serializer.fromJson<int>(json['childFriendly']),
      dogFriendly: serializer.fromJson<int>(json['dogFriendly']),
      energyLevel: serializer.fromJson<int>(json['energyLevel']),
      grooming: serializer.fromJson<int>(json['grooming']),
      healthIssues: serializer.fromJson<int>(json['healthIssues']),
      intelligence: serializer.fromJson<int>(json['intelligence']),
      sheddingLevel: serializer.fromJson<int?>(json['sheddingLevel']),
      socialNeeds: serializer.fromJson<int>(json['socialNeeds']),
      strangerFriendly: serializer.fromJson<int>(json['strangerFriendly']),
      vocalisation: serializer.fromJson<int>(json['vocalisation']),
      experimental: serializer.fromJson<int?>(json['experimental']),
      hairless: serializer.fromJson<int?>(json['hairless']),
      natural: serializer.fromJson<int?>(json['natural']),
      rare: serializer.fromJson<int?>(json['rare']),
      rex: serializer.fromJson<int?>(json['rex']),
      suppressedTail: serializer.fromJson<int?>(json['suppressedTail']),
      shortLegs: serializer.fromJson<int?>(json['shortLegs']),
      wikipediaUrl: serializer.fromJson<String?>(json['wikipediaUrl']),
      hypoallergenic: serializer.fromJson<int?>(json['hypoallergenic']),
      referenceImageId: serializer.fromJson<String?>(json['referenceImageId']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'temperament': serializer.toJson<String?>(temperament),
      'origin': serializer.toJson<String>(origin),
      'description': serializer.toJson<String>(description),
      'lifeSpan': serializer.toJson<String>(lifeSpan),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'adaptability': serializer.toJson<int>(adaptability),
      'affectionLevel': serializer.toJson<int>(affectionLevel),
      'childFriendly': serializer.toJson<int>(childFriendly),
      'dogFriendly': serializer.toJson<int>(dogFriendly),
      'energyLevel': serializer.toJson<int>(energyLevel),
      'grooming': serializer.toJson<int>(grooming),
      'healthIssues': serializer.toJson<int>(healthIssues),
      'intelligence': serializer.toJson<int>(intelligence),
      'sheddingLevel': serializer.toJson<int?>(sheddingLevel),
      'socialNeeds': serializer.toJson<int>(socialNeeds),
      'strangerFriendly': serializer.toJson<int>(strangerFriendly),
      'vocalisation': serializer.toJson<int>(vocalisation),
      'experimental': serializer.toJson<int?>(experimental),
      'hairless': serializer.toJson<int?>(hairless),
      'natural': serializer.toJson<int?>(natural),
      'rare': serializer.toJson<int?>(rare),
      'rex': serializer.toJson<int?>(rex),
      'suppressedTail': serializer.toJson<int?>(suppressedTail),
      'shortLegs': serializer.toJson<int?>(shortLegs),
      'wikipediaUrl': serializer.toJson<String?>(wikipediaUrl),
      'hypoallergenic': serializer.toJson<int?>(hypoallergenic),
      'referenceImageId': serializer.toJson<String?>(referenceImageId),
    };
  }

  CatBreedsTableData copyWith({
    String? id,
    String? name,
    Value<String?> temperament = const Value.absent(),
    String? origin,
    String? description,
    String? lifeSpan,
    Value<String?> imageUrl = const Value.absent(),
    int? adaptability,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    Value<int?> sheddingLevel = const Value.absent(),
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    Value<int?> experimental = const Value.absent(),
    Value<int?> hairless = const Value.absent(),
    Value<int?> natural = const Value.absent(),
    Value<int?> rare = const Value.absent(),
    Value<int?> rex = const Value.absent(),
    Value<int?> suppressedTail = const Value.absent(),
    Value<int?> shortLegs = const Value.absent(),
    Value<String?> wikipediaUrl = const Value.absent(),
    Value<int?> hypoallergenic = const Value.absent(),
    Value<String?> referenceImageId = const Value.absent(),
  }) => CatBreedsTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    temperament: temperament.present ? temperament.value : this.temperament,
    origin: origin ?? this.origin,
    description: description ?? this.description,
    lifeSpan: lifeSpan ?? this.lifeSpan,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    adaptability: adaptability ?? this.adaptability,
    affectionLevel: affectionLevel ?? this.affectionLevel,
    childFriendly: childFriendly ?? this.childFriendly,
    dogFriendly: dogFriendly ?? this.dogFriendly,
    energyLevel: energyLevel ?? this.energyLevel,
    grooming: grooming ?? this.grooming,
    healthIssues: healthIssues ?? this.healthIssues,
    intelligence: intelligence ?? this.intelligence,
    sheddingLevel: sheddingLevel.present
        ? sheddingLevel.value
        : this.sheddingLevel,
    socialNeeds: socialNeeds ?? this.socialNeeds,
    strangerFriendly: strangerFriendly ?? this.strangerFriendly,
    vocalisation: vocalisation ?? this.vocalisation,
    experimental: experimental.present ? experimental.value : this.experimental,
    hairless: hairless.present ? hairless.value : this.hairless,
    natural: natural.present ? natural.value : this.natural,
    rare: rare.present ? rare.value : this.rare,
    rex: rex.present ? rex.value : this.rex,
    suppressedTail: suppressedTail.present
        ? suppressedTail.value
        : this.suppressedTail,
    shortLegs: shortLegs.present ? shortLegs.value : this.shortLegs,
    wikipediaUrl: wikipediaUrl.present ? wikipediaUrl.value : this.wikipediaUrl,
    hypoallergenic: hypoallergenic.present
        ? hypoallergenic.value
        : this.hypoallergenic,
    referenceImageId: referenceImageId.present
        ? referenceImageId.value
        : this.referenceImageId,
  );

  CatBreedsTableData copyWithCompanion(CatBreedsTableCompanion data) {
    return CatBreedsTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      temperament: data.temperament.present
          ? data.temperament.value
          : this.temperament,
      origin: data.origin.present ? data.origin.value : this.origin,
      description: data.description.present
          ? data.description.value
          : this.description,
      lifeSpan: data.lifeSpan.present ? data.lifeSpan.value : this.lifeSpan,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      adaptability: data.adaptability.present
          ? data.adaptability.value
          : this.adaptability,
      affectionLevel: data.affectionLevel.present
          ? data.affectionLevel.value
          : this.affectionLevel,
      childFriendly: data.childFriendly.present
          ? data.childFriendly.value
          : this.childFriendly,
      dogFriendly: data.dogFriendly.present
          ? data.dogFriendly.value
          : this.dogFriendly,
      energyLevel: data.energyLevel.present
          ? data.energyLevel.value
          : this.energyLevel,
      grooming: data.grooming.present ? data.grooming.value : this.grooming,
      healthIssues: data.healthIssues.present
          ? data.healthIssues.value
          : this.healthIssues,
      intelligence: data.intelligence.present
          ? data.intelligence.value
          : this.intelligence,
      sheddingLevel: data.sheddingLevel.present
          ? data.sheddingLevel.value
          : this.sheddingLevel,
      socialNeeds: data.socialNeeds.present
          ? data.socialNeeds.value
          : this.socialNeeds,
      strangerFriendly: data.strangerFriendly.present
          ? data.strangerFriendly.value
          : this.strangerFriendly,
      vocalisation: data.vocalisation.present
          ? data.vocalisation.value
          : this.vocalisation,
      experimental: data.experimental.present
          ? data.experimental.value
          : this.experimental,
      hairless: data.hairless.present ? data.hairless.value : this.hairless,
      natural: data.natural.present ? data.natural.value : this.natural,
      rare: data.rare.present ? data.rare.value : this.rare,
      rex: data.rex.present ? data.rex.value : this.rex,
      suppressedTail: data.suppressedTail.present
          ? data.suppressedTail.value
          : this.suppressedTail,
      shortLegs: data.shortLegs.present ? data.shortLegs.value : this.shortLegs,
      wikipediaUrl: data.wikipediaUrl.present
          ? data.wikipediaUrl.value
          : this.wikipediaUrl,
      hypoallergenic: data.hypoallergenic.present
          ? data.hypoallergenic.value
          : this.hypoallergenic,
      referenceImageId: data.referenceImageId.present
          ? data.referenceImageId.value
          : this.referenceImageId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CatBreedsTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('temperament: $temperament, ')
          ..write('origin: $origin, ')
          ..write('description: $description, ')
          ..write('lifeSpan: $lifeSpan, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('adaptability: $adaptability, ')
          ..write('affectionLevel: $affectionLevel, ')
          ..write('childFriendly: $childFriendly, ')
          ..write('dogFriendly: $dogFriendly, ')
          ..write('energyLevel: $energyLevel, ')
          ..write('grooming: $grooming, ')
          ..write('healthIssues: $healthIssues, ')
          ..write('intelligence: $intelligence, ')
          ..write('sheddingLevel: $sheddingLevel, ')
          ..write('socialNeeds: $socialNeeds, ')
          ..write('strangerFriendly: $strangerFriendly, ')
          ..write('vocalisation: $vocalisation, ')
          ..write('experimental: $experimental, ')
          ..write('hairless: $hairless, ')
          ..write('natural: $natural, ')
          ..write('rare: $rare, ')
          ..write('rex: $rex, ')
          ..write('suppressedTail: $suppressedTail, ')
          ..write('shortLegs: $shortLegs, ')
          ..write('wikipediaUrl: $wikipediaUrl, ')
          ..write('hypoallergenic: $hypoallergenic, ')
          ..write('referenceImageId: $referenceImageId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    temperament,
    origin,
    description,
    lifeSpan,
    imageUrl,
    adaptability,
    affectionLevel,
    childFriendly,
    dogFriendly,
    energyLevel,
    grooming,
    healthIssues,
    intelligence,
    sheddingLevel,
    socialNeeds,
    strangerFriendly,
    vocalisation,
    experimental,
    hairless,
    natural,
    rare,
    rex,
    suppressedTail,
    shortLegs,
    wikipediaUrl,
    hypoallergenic,
    referenceImageId,
  ]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CatBreedsTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.temperament == this.temperament &&
          other.origin == this.origin &&
          other.description == this.description &&
          other.lifeSpan == this.lifeSpan &&
          other.imageUrl == this.imageUrl &&
          other.adaptability == this.adaptability &&
          other.affectionLevel == this.affectionLevel &&
          other.childFriendly == this.childFriendly &&
          other.dogFriendly == this.dogFriendly &&
          other.energyLevel == this.energyLevel &&
          other.grooming == this.grooming &&
          other.healthIssues == this.healthIssues &&
          other.intelligence == this.intelligence &&
          other.sheddingLevel == this.sheddingLevel &&
          other.socialNeeds == this.socialNeeds &&
          other.strangerFriendly == this.strangerFriendly &&
          other.vocalisation == this.vocalisation &&
          other.experimental == this.experimental &&
          other.hairless == this.hairless &&
          other.natural == this.natural &&
          other.rare == this.rare &&
          other.rex == this.rex &&
          other.suppressedTail == this.suppressedTail &&
          other.shortLegs == this.shortLegs &&
          other.wikipediaUrl == this.wikipediaUrl &&
          other.hypoallergenic == this.hypoallergenic &&
          other.referenceImageId == this.referenceImageId);
}

class CatBreedsTableCompanion extends UpdateCompanion<CatBreedsTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> temperament;
  final Value<String> origin;
  final Value<String> description;
  final Value<String> lifeSpan;
  final Value<String?> imageUrl;
  final Value<int> adaptability;
  final Value<int> affectionLevel;
  final Value<int> childFriendly;
  final Value<int> dogFriendly;
  final Value<int> energyLevel;
  final Value<int> grooming;
  final Value<int> healthIssues;
  final Value<int> intelligence;
  final Value<int?> sheddingLevel;
  final Value<int> socialNeeds;
  final Value<int> strangerFriendly;
  final Value<int> vocalisation;
  final Value<int?> experimental;
  final Value<int?> hairless;
  final Value<int?> natural;
  final Value<int?> rare;
  final Value<int?> rex;
  final Value<int?> suppressedTail;
  final Value<int?> shortLegs;
  final Value<String?> wikipediaUrl;
  final Value<int?> hypoallergenic;
  final Value<String?> referenceImageId;
  final Value<int> rowid;

  const CatBreedsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.temperament = const Value.absent(),
    this.origin = const Value.absent(),
    this.description = const Value.absent(),
    this.lifeSpan = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.adaptability = const Value.absent(),
    this.affectionLevel = const Value.absent(),
    this.childFriendly = const Value.absent(),
    this.dogFriendly = const Value.absent(),
    this.energyLevel = const Value.absent(),
    this.grooming = const Value.absent(),
    this.healthIssues = const Value.absent(),
    this.intelligence = const Value.absent(),
    this.sheddingLevel = const Value.absent(),
    this.socialNeeds = const Value.absent(),
    this.strangerFriendly = const Value.absent(),
    this.vocalisation = const Value.absent(),
    this.experimental = const Value.absent(),
    this.hairless = const Value.absent(),
    this.natural = const Value.absent(),
    this.rare = const Value.absent(),
    this.rex = const Value.absent(),
    this.suppressedTail = const Value.absent(),
    this.shortLegs = const Value.absent(),
    this.wikipediaUrl = const Value.absent(),
    this.hypoallergenic = const Value.absent(),
    this.referenceImageId = const Value.absent(),
    this.rowid = const Value.absent(),
  });

  CatBreedsTableCompanion.insert({
    required String id,
    required String name,
    this.temperament = const Value.absent(),
    required String origin,
    required String description,
    required String lifeSpan,
    this.imageUrl = const Value.absent(),
    required int adaptability,
    required int affectionLevel,
    required int childFriendly,
    required int dogFriendly,
    required int energyLevel,
    required int grooming,
    required int healthIssues,
    required int intelligence,
    this.sheddingLevel = const Value.absent(),
    required int socialNeeds,
    required int strangerFriendly,
    required int vocalisation,
    this.experimental = const Value.absent(),
    this.hairless = const Value.absent(),
    this.natural = const Value.absent(),
    this.rare = const Value.absent(),
    this.rex = const Value.absent(),
    this.suppressedTail = const Value.absent(),
    this.shortLegs = const Value.absent(),
    this.wikipediaUrl = const Value.absent(),
    this.hypoallergenic = const Value.absent(),
    this.referenceImageId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       origin = Value(origin),
       description = Value(description),
       lifeSpan = Value(lifeSpan),
       adaptability = Value(adaptability),
       affectionLevel = Value(affectionLevel),
       childFriendly = Value(childFriendly),
       dogFriendly = Value(dogFriendly),
       energyLevel = Value(energyLevel),
       grooming = Value(grooming),
       healthIssues = Value(healthIssues),
       intelligence = Value(intelligence),
       socialNeeds = Value(socialNeeds),
       strangerFriendly = Value(strangerFriendly),
       vocalisation = Value(vocalisation);

  static Insertable<CatBreedsTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? temperament,
    Expression<String>? origin,
    Expression<String>? description,
    Expression<String>? lifeSpan,
    Expression<String>? imageUrl,
    Expression<int>? adaptability,
    Expression<int>? affectionLevel,
    Expression<int>? childFriendly,
    Expression<int>? dogFriendly,
    Expression<int>? energyLevel,
    Expression<int>? grooming,
    Expression<int>? healthIssues,
    Expression<int>? intelligence,
    Expression<int>? sheddingLevel,
    Expression<int>? socialNeeds,
    Expression<int>? strangerFriendly,
    Expression<int>? vocalisation,
    Expression<int>? experimental,
    Expression<int>? hairless,
    Expression<int>? natural,
    Expression<int>? rare,
    Expression<int>? rex,
    Expression<int>? suppressedTail,
    Expression<int>? shortLegs,
    Expression<String>? wikipediaUrl,
    Expression<int>? hypoallergenic,
    Expression<String>? referenceImageId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (temperament != null) 'temperament': temperament,
      if (origin != null) 'origin': origin,
      if (description != null) 'description': description,
      if (lifeSpan != null) 'life_span': lifeSpan,
      if (imageUrl != null) 'image_url': imageUrl,
      if (adaptability != null) 'adaptability': adaptability,
      if (affectionLevel != null) 'affection_level': affectionLevel,
      if (childFriendly != null) 'child_friendly': childFriendly,
      if (dogFriendly != null) 'dog_friendly': dogFriendly,
      if (energyLevel != null) 'energy_level': energyLevel,
      if (grooming != null) 'grooming': grooming,
      if (healthIssues != null) 'health_issues': healthIssues,
      if (intelligence != null) 'intelligence': intelligence,
      if (sheddingLevel != null) 'shedding_level': sheddingLevel,
      if (socialNeeds != null) 'social_needs': socialNeeds,
      if (strangerFriendly != null) 'stranger_friendly': strangerFriendly,
      if (vocalisation != null) 'vocalisation': vocalisation,
      if (experimental != null) 'experimental': experimental,
      if (hairless != null) 'hairless': hairless,
      if (natural != null) 'natural': natural,
      if (rare != null) 'rare': rare,
      if (rex != null) 'rex': rex,
      if (suppressedTail != null) 'suppressed_tail': suppressedTail,
      if (shortLegs != null) 'short_legs': shortLegs,
      if (wikipediaUrl != null) 'wikipedia_url': wikipediaUrl,
      if (hypoallergenic != null) 'hypoallergenic': hypoallergenic,
      if (referenceImageId != null) 'reference_image_id': referenceImageId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CatBreedsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? temperament,
    Value<String>? origin,
    Value<String>? description,
    Value<String>? lifeSpan,
    Value<String?>? imageUrl,
    Value<int>? adaptability,
    Value<int>? affectionLevel,
    Value<int>? childFriendly,
    Value<int>? dogFriendly,
    Value<int>? energyLevel,
    Value<int>? grooming,
    Value<int>? healthIssues,
    Value<int>? intelligence,
    Value<int?>? sheddingLevel,
    Value<int>? socialNeeds,
    Value<int>? strangerFriendly,
    Value<int>? vocalisation,
    Value<int?>? experimental,
    Value<int?>? hairless,
    Value<int?>? natural,
    Value<int?>? rare,
    Value<int?>? rex,
    Value<int?>? suppressedTail,
    Value<int?>? shortLegs,
    Value<String?>? wikipediaUrl,
    Value<int?>? hypoallergenic,
    Value<String?>? referenceImageId,
    Value<int>? rowid,
  }) {
    return CatBreedsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      temperament: temperament ?? this.temperament,
      origin: origin ?? this.origin,
      description: description ?? this.description,
      lifeSpan: lifeSpan ?? this.lifeSpan,
      imageUrl: imageUrl ?? this.imageUrl,
      adaptability: adaptability ?? this.adaptability,
      affectionLevel: affectionLevel ?? this.affectionLevel,
      childFriendly: childFriendly ?? this.childFriendly,
      dogFriendly: dogFriendly ?? this.dogFriendly,
      energyLevel: energyLevel ?? this.energyLevel,
      grooming: grooming ?? this.grooming,
      healthIssues: healthIssues ?? this.healthIssues,
      intelligence: intelligence ?? this.intelligence,
      sheddingLevel: sheddingLevel ?? this.sheddingLevel,
      socialNeeds: socialNeeds ?? this.socialNeeds,
      strangerFriendly: strangerFriendly ?? this.strangerFriendly,
      vocalisation: vocalisation ?? this.vocalisation,
      experimental: experimental ?? this.experimental,
      hairless: hairless ?? this.hairless,
      natural: natural ?? this.natural,
      rare: rare ?? this.rare,
      rex: rex ?? this.rex,
      suppressedTail: suppressedTail ?? this.suppressedTail,
      shortLegs: shortLegs ?? this.shortLegs,
      wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
      hypoallergenic: hypoallergenic ?? this.hypoallergenic,
      referenceImageId: referenceImageId ?? this.referenceImageId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (temperament.present) {
      map['temperament'] = Variable<String>(temperament.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String>(origin.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (lifeSpan.present) {
      map['life_span'] = Variable<String>(lifeSpan.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (adaptability.present) {
      map['adaptability'] = Variable<int>(adaptability.value);
    }
    if (affectionLevel.present) {
      map['affection_level'] = Variable<int>(affectionLevel.value);
    }
    if (childFriendly.present) {
      map['child_friendly'] = Variable<int>(childFriendly.value);
    }
    if (dogFriendly.present) {
      map['dog_friendly'] = Variable<int>(dogFriendly.value);
    }
    if (energyLevel.present) {
      map['energy_level'] = Variable<int>(energyLevel.value);
    }
    if (grooming.present) {
      map['grooming'] = Variable<int>(grooming.value);
    }
    if (healthIssues.present) {
      map['health_issues'] = Variable<int>(healthIssues.value);
    }
    if (intelligence.present) {
      map['intelligence'] = Variable<int>(intelligence.value);
    }
    if (sheddingLevel.present) {
      map['shedding_level'] = Variable<int>(sheddingLevel.value);
    }
    if (socialNeeds.present) {
      map['social_needs'] = Variable<int>(socialNeeds.value);
    }
    if (strangerFriendly.present) {
      map['stranger_friendly'] = Variable<int>(strangerFriendly.value);
    }
    if (vocalisation.present) {
      map['vocalisation'] = Variable<int>(vocalisation.value);
    }
    if (experimental.present) {
      map['experimental'] = Variable<int>(experimental.value);
    }
    if (hairless.present) {
      map['hairless'] = Variable<int>(hairless.value);
    }
    if (natural.present) {
      map['natural'] = Variable<int>(natural.value);
    }
    if (rare.present) {
      map['rare'] = Variable<int>(rare.value);
    }
    if (rex.present) {
      map['rex'] = Variable<int>(rex.value);
    }
    if (suppressedTail.present) {
      map['suppressed_tail'] = Variable<int>(suppressedTail.value);
    }
    if (shortLegs.present) {
      map['short_legs'] = Variable<int>(shortLegs.value);
    }
    if (wikipediaUrl.present) {
      map['wikipedia_url'] = Variable<String>(wikipediaUrl.value);
    }
    if (hypoallergenic.present) {
      map['hypoallergenic'] = Variable<int>(hypoallergenic.value);
    }
    if (referenceImageId.present) {
      map['reference_image_id'] = Variable<String>(referenceImageId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CatBreedsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('temperament: $temperament, ')
          ..write('origin: $origin, ')
          ..write('description: $description, ')
          ..write('lifeSpan: $lifeSpan, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('adaptability: $adaptability, ')
          ..write('affectionLevel: $affectionLevel, ')
          ..write('childFriendly: $childFriendly, ')
          ..write('dogFriendly: $dogFriendly, ')
          ..write('energyLevel: $energyLevel, ')
          ..write('grooming: $grooming, ')
          ..write('healthIssues: $healthIssues, ')
          ..write('intelligence: $intelligence, ')
          ..write('sheddingLevel: $sheddingLevel, ')
          ..write('socialNeeds: $socialNeeds, ')
          ..write('strangerFriendly: $strangerFriendly, ')
          ..write('vocalisation: $vocalisation, ')
          ..write('experimental: $experimental, ')
          ..write('hairless: $hairless, ')
          ..write('natural: $natural, ')
          ..write('rare: $rare, ')
          ..write('rex: $rex, ')
          ..write('suppressedTail: $suppressedTail, ')
          ..write('shortLegs: $shortLegs, ')
          ..write('wikipediaUrl: $wikipediaUrl, ')
          ..write('hypoallergenic: $hypoallergenic, ')
          ..write('referenceImageId: $referenceImageId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);

  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CatBreedsTableTable catBreedsTable = $CatBreedsTableTable(this);

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();

  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [catBreedsTable];
}

typedef $$CatBreedsTableTableCreateCompanionBuilder =
    CatBreedsTableCompanion Function({
      required String id,
      required String name,
      Value<String?> temperament,
      required String origin,
      required String description,
      required String lifeSpan,
      Value<String?> imageUrl,
      required int adaptability,
      required int affectionLevel,
      required int childFriendly,
      required int dogFriendly,
      required int energyLevel,
      required int grooming,
      required int healthIssues,
      required int intelligence,
      Value<int?> sheddingLevel,
      required int socialNeeds,
      required int strangerFriendly,
      required int vocalisation,
      Value<int?> experimental,
      Value<int?> hairless,
      Value<int?> natural,
      Value<int?> rare,
      Value<int?> rex,
      Value<int?> suppressedTail,
      Value<int?> shortLegs,
      Value<String?> wikipediaUrl,
      Value<int?> hypoallergenic,
      Value<String?> referenceImageId,
      Value<int> rowid,
    });
typedef $$CatBreedsTableTableUpdateCompanionBuilder =
    CatBreedsTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> temperament,
      Value<String> origin,
      Value<String> description,
      Value<String> lifeSpan,
      Value<String?> imageUrl,
      Value<int> adaptability,
      Value<int> affectionLevel,
      Value<int> childFriendly,
      Value<int> dogFriendly,
      Value<int> energyLevel,
      Value<int> grooming,
      Value<int> healthIssues,
      Value<int> intelligence,
      Value<int?> sheddingLevel,
      Value<int> socialNeeds,
      Value<int> strangerFriendly,
      Value<int> vocalisation,
      Value<int?> experimental,
      Value<int?> hairless,
      Value<int?> natural,
      Value<int?> rare,
      Value<int?> rex,
      Value<int?> suppressedTail,
      Value<int?> shortLegs,
      Value<String?> wikipediaUrl,
      Value<int?> hypoallergenic,
      Value<String?> referenceImageId,
      Value<int> rowid,
    });

class $$CatBreedsTableTableFilterComposer
    extends Composer<_$AppDatabase, $CatBreedsTableTable> {
  $$CatBreedsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get temperament => $composableBuilder(
    column: $table.temperament,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get origin => $composableBuilder(
    column: $table.origin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lifeSpan => $composableBuilder(
    column: $table.lifeSpan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get adaptability => $composableBuilder(
    column: $table.adaptability,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get affectionLevel => $composableBuilder(
    column: $table.affectionLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get childFriendly => $composableBuilder(
    column: $table.childFriendly,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dogFriendly => $composableBuilder(
    column: $table.dogFriendly,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get energyLevel => $composableBuilder(
    column: $table.energyLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get grooming => $composableBuilder(
    column: $table.grooming,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get healthIssues => $composableBuilder(
    column: $table.healthIssues,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intelligence => $composableBuilder(
    column: $table.intelligence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sheddingLevel => $composableBuilder(
    column: $table.sheddingLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get socialNeeds => $composableBuilder(
    column: $table.socialNeeds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get strangerFriendly => $composableBuilder(
    column: $table.strangerFriendly,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get vocalisation => $composableBuilder(
    column: $table.vocalisation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get experimental => $composableBuilder(
    column: $table.experimental,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hairless => $composableBuilder(
    column: $table.hairless,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get natural => $composableBuilder(
    column: $table.natural,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rare => $composableBuilder(
    column: $table.rare,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rex => $composableBuilder(
    column: $table.rex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get suppressedTail => $composableBuilder(
    column: $table.suppressedTail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get shortLegs => $composableBuilder(
    column: $table.shortLegs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get wikipediaUrl => $composableBuilder(
    column: $table.wikipediaUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hypoallergenic => $composableBuilder(
    column: $table.hypoallergenic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referenceImageId => $composableBuilder(
    column: $table.referenceImageId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CatBreedsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CatBreedsTableTable> {
  $$CatBreedsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get temperament => $composableBuilder(
    column: $table.temperament,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get origin => $composableBuilder(
    column: $table.origin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lifeSpan => $composableBuilder(
    column: $table.lifeSpan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get adaptability => $composableBuilder(
    column: $table.adaptability,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get affectionLevel => $composableBuilder(
    column: $table.affectionLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get childFriendly => $composableBuilder(
    column: $table.childFriendly,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dogFriendly => $composableBuilder(
    column: $table.dogFriendly,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get energyLevel => $composableBuilder(
    column: $table.energyLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get grooming => $composableBuilder(
    column: $table.grooming,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get healthIssues => $composableBuilder(
    column: $table.healthIssues,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intelligence => $composableBuilder(
    column: $table.intelligence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sheddingLevel => $composableBuilder(
    column: $table.sheddingLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get socialNeeds => $composableBuilder(
    column: $table.socialNeeds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get strangerFriendly => $composableBuilder(
    column: $table.strangerFriendly,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get vocalisation => $composableBuilder(
    column: $table.vocalisation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get experimental => $composableBuilder(
    column: $table.experimental,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hairless => $composableBuilder(
    column: $table.hairless,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get natural => $composableBuilder(
    column: $table.natural,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rare => $composableBuilder(
    column: $table.rare,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rex => $composableBuilder(
    column: $table.rex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get suppressedTail => $composableBuilder(
    column: $table.suppressedTail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get shortLegs => $composableBuilder(
    column: $table.shortLegs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get wikipediaUrl => $composableBuilder(
    column: $table.wikipediaUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hypoallergenic => $composableBuilder(
    column: $table.hypoallergenic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referenceImageId => $composableBuilder(
    column: $table.referenceImageId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CatBreedsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CatBreedsTableTable> {
  $$CatBreedsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });

  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get temperament => $composableBuilder(
    column: $table.temperament,
    builder: (column) => column,
  );

  GeneratedColumn<String> get origin =>
      $composableBuilder(column: $table.origin, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get lifeSpan =>
      $composableBuilder(column: $table.lifeSpan, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<int> get adaptability => $composableBuilder(
    column: $table.adaptability,
    builder: (column) => column,
  );

  GeneratedColumn<int> get affectionLevel => $composableBuilder(
    column: $table.affectionLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get childFriendly => $composableBuilder(
    column: $table.childFriendly,
    builder: (column) => column,
  );

  GeneratedColumn<int> get dogFriendly => $composableBuilder(
    column: $table.dogFriendly,
    builder: (column) => column,
  );

  GeneratedColumn<int> get energyLevel => $composableBuilder(
    column: $table.energyLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get grooming =>
      $composableBuilder(column: $table.grooming, builder: (column) => column);

  GeneratedColumn<int> get healthIssues => $composableBuilder(
    column: $table.healthIssues,
    builder: (column) => column,
  );

  GeneratedColumn<int> get intelligence => $composableBuilder(
    column: $table.intelligence,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sheddingLevel => $composableBuilder(
    column: $table.sheddingLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get socialNeeds => $composableBuilder(
    column: $table.socialNeeds,
    builder: (column) => column,
  );

  GeneratedColumn<int> get strangerFriendly => $composableBuilder(
    column: $table.strangerFriendly,
    builder: (column) => column,
  );

  GeneratedColumn<int> get vocalisation => $composableBuilder(
    column: $table.vocalisation,
    builder: (column) => column,
  );

  GeneratedColumn<int> get experimental => $composableBuilder(
    column: $table.experimental,
    builder: (column) => column,
  );

  GeneratedColumn<int> get hairless =>
      $composableBuilder(column: $table.hairless, builder: (column) => column);

  GeneratedColumn<int> get natural =>
      $composableBuilder(column: $table.natural, builder: (column) => column);

  GeneratedColumn<int> get rare =>
      $composableBuilder(column: $table.rare, builder: (column) => column);

  GeneratedColumn<int> get rex =>
      $composableBuilder(column: $table.rex, builder: (column) => column);

  GeneratedColumn<int> get suppressedTail => $composableBuilder(
    column: $table.suppressedTail,
    builder: (column) => column,
  );

  GeneratedColumn<int> get shortLegs =>
      $composableBuilder(column: $table.shortLegs, builder: (column) => column);

  GeneratedColumn<String> get wikipediaUrl => $composableBuilder(
    column: $table.wikipediaUrl,
    builder: (column) => column,
  );

  GeneratedColumn<int> get hypoallergenic => $composableBuilder(
    column: $table.hypoallergenic,
    builder: (column) => column,
  );

  GeneratedColumn<String> get referenceImageId => $composableBuilder(
    column: $table.referenceImageId,
    builder: (column) => column,
  );
}

class $$CatBreedsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CatBreedsTableTable,
          CatBreedsTableData,
          $$CatBreedsTableTableFilterComposer,
          $$CatBreedsTableTableOrderingComposer,
          $$CatBreedsTableTableAnnotationComposer,
          $$CatBreedsTableTableCreateCompanionBuilder,
          $$CatBreedsTableTableUpdateCompanionBuilder,
          (
            CatBreedsTableData,
            BaseReferences<
              _$AppDatabase,
              $CatBreedsTableTable,
              CatBreedsTableData
            >,
          ),
          CatBreedsTableData,
          PrefetchHooks Function()
        > {
  $$CatBreedsTableTableTableManager(
    _$AppDatabase db,
    $CatBreedsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CatBreedsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CatBreedsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CatBreedsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> temperament = const Value.absent(),
                Value<String> origin = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> lifeSpan = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<int> adaptability = const Value.absent(),
                Value<int> affectionLevel = const Value.absent(),
                Value<int> childFriendly = const Value.absent(),
                Value<int> dogFriendly = const Value.absent(),
                Value<int> energyLevel = const Value.absent(),
                Value<int> grooming = const Value.absent(),
                Value<int> healthIssues = const Value.absent(),
                Value<int> intelligence = const Value.absent(),
                Value<int?> sheddingLevel = const Value.absent(),
                Value<int> socialNeeds = const Value.absent(),
                Value<int> strangerFriendly = const Value.absent(),
                Value<int> vocalisation = const Value.absent(),
                Value<int?> experimental = const Value.absent(),
                Value<int?> hairless = const Value.absent(),
                Value<int?> natural = const Value.absent(),
                Value<int?> rare = const Value.absent(),
                Value<int?> rex = const Value.absent(),
                Value<int?> suppressedTail = const Value.absent(),
                Value<int?> shortLegs = const Value.absent(),
                Value<String?> wikipediaUrl = const Value.absent(),
                Value<int?> hypoallergenic = const Value.absent(),
                Value<String?> referenceImageId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CatBreedsTableCompanion(
                id: id,
                name: name,
                temperament: temperament,
                origin: origin,
                description: description,
                lifeSpan: lifeSpan,
                imageUrl: imageUrl,
                adaptability: adaptability,
                affectionLevel: affectionLevel,
                childFriendly: childFriendly,
                dogFriendly: dogFriendly,
                energyLevel: energyLevel,
                grooming: grooming,
                healthIssues: healthIssues,
                intelligence: intelligence,
                sheddingLevel: sheddingLevel,
                socialNeeds: socialNeeds,
                strangerFriendly: strangerFriendly,
                vocalisation: vocalisation,
                experimental: experimental,
                hairless: hairless,
                natural: natural,
                rare: rare,
                rex: rex,
                suppressedTail: suppressedTail,
                shortLegs: shortLegs,
                wikipediaUrl: wikipediaUrl,
                hypoallergenic: hypoallergenic,
                referenceImageId: referenceImageId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> temperament = const Value.absent(),
                required String origin,
                required String description,
                required String lifeSpan,
                Value<String?> imageUrl = const Value.absent(),
                required int adaptability,
                required int affectionLevel,
                required int childFriendly,
                required int dogFriendly,
                required int energyLevel,
                required int grooming,
                required int healthIssues,
                required int intelligence,
                Value<int?> sheddingLevel = const Value.absent(),
                required int socialNeeds,
                required int strangerFriendly,
                required int vocalisation,
                Value<int?> experimental = const Value.absent(),
                Value<int?> hairless = const Value.absent(),
                Value<int?> natural = const Value.absent(),
                Value<int?> rare = const Value.absent(),
                Value<int?> rex = const Value.absent(),
                Value<int?> suppressedTail = const Value.absent(),
                Value<int?> shortLegs = const Value.absent(),
                Value<String?> wikipediaUrl = const Value.absent(),
                Value<int?> hypoallergenic = const Value.absent(),
                Value<String?> referenceImageId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CatBreedsTableCompanion.insert(
                id: id,
                name: name,
                temperament: temperament,
                origin: origin,
                description: description,
                lifeSpan: lifeSpan,
                imageUrl: imageUrl,
                adaptability: adaptability,
                affectionLevel: affectionLevel,
                childFriendly: childFriendly,
                dogFriendly: dogFriendly,
                energyLevel: energyLevel,
                grooming: grooming,
                healthIssues: healthIssues,
                intelligence: intelligence,
                sheddingLevel: sheddingLevel,
                socialNeeds: socialNeeds,
                strangerFriendly: strangerFriendly,
                vocalisation: vocalisation,
                experimental: experimental,
                hairless: hairless,
                natural: natural,
                rare: rare,
                rex: rex,
                suppressedTail: suppressedTail,
                shortLegs: shortLegs,
                wikipediaUrl: wikipediaUrl,
                hypoallergenic: hypoallergenic,
                referenceImageId: referenceImageId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CatBreedsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CatBreedsTableTable,
      CatBreedsTableData,
      $$CatBreedsTableTableFilterComposer,
      $$CatBreedsTableTableOrderingComposer,
      $$CatBreedsTableTableAnnotationComposer,
      $$CatBreedsTableTableCreateCompanionBuilder,
      $$CatBreedsTableTableUpdateCompanionBuilder,
      (
        CatBreedsTableData,
        BaseReferences<_$AppDatabase, $CatBreedsTableTable, CatBreedsTableData>,
      ),
      CatBreedsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;

  $AppDatabaseManager(this._db);

  $$CatBreedsTableTableTableManager get catBreedsTable =>
      $$CatBreedsTableTableTableManager(_db, _db.catBreedsTable);
}
