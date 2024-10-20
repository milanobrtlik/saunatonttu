import 'dart:math';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:saunatonttu/components/components.dart';
import 'package:saunatonttu/components/sauna_autocomplete/view/sauna_autocomplete_page.dart';
import 'package:saunatonttu/fragments.graphql.dart';
import 'package:saunatonttu/module_visits_history/manage/bloc/sauna_visit_manage_bloc.dart';

class _VisitedAtInput extends StatelessWidget {
  const _VisitedAtInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.createdAt != c.createdAt,
      builder: (context, state) {
        return TextField(
          controller: state.createdAt.value != null
              ? TextEditingController(
                  text: DateFormat('d. M. yyyy').format(state.createdAt.value!),
                )
              : null,
          readOnly: true,
          decoration: const InputDecoration(
            labelText: 'Datum',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.calendar_month),
            errorText: null,
          ),
          onTap: () async {
            final bloc = context.read<SaunaVisitManageBloc>();
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 3650)),
              lastDate: DateTime.now(),
            );
            if (picked == null) return;
            bloc.add(VisitHistoryCreatedAtChangedEvent(picked));
          },
        );
      },
    );
  }
}

class _CyclesInput extends StatelessWidget {
  const _CyclesInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.cycles != c.cycles,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Počet cyklů',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            NumberPicker(
              minValue: 1,
              maxValue: 10,
              value: state.cycles.value,
              haptics: true,
              onChanged: (i) => context
                  .read<SaunaVisitManageBloc>()
                  .add(VisitHistoryCyclesChangedEvent(i)),
              axis: Axis.horizontal,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.black45),
              ),
              step: 1,
              itemWidth: 80,
            ),
          ],
        );
      },
    );
  }
}

class _DurationInput extends StatelessWidget {
  const _DurationInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.duration != c.duration,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Délka návštěvy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            NumberPicker(
              minValue: 900,
              maxValue: 86400,
              value: state.duration.value,
              onChanged: (i) => context
                  .read<SaunaVisitManageBloc>()
                  .add(VisitHistoryDurationChangedEvent(i)),
              axis: Axis.horizontal,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.black45),
              ),
              textMapper: (o) => "${(int.parse(o) / 3600).toStringAsFixed(2)}h",
              step: 900,
              itemWidth: 80,
            ),
          ],
        );
      },
    );
  }
}

class _NoteInput extends StatelessWidget {
  const _NoteInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.note != c.note,
      builder: (context, state) {
        return FormzTextField(
          label: 'Osobní poznámka',
          minLines: 3,
          onChanged: (s) => context
              .read<SaunaVisitManageBloc>()
              .add(VisitHistoryNoteChangedEvent(s)),
          text: state.note.value,
          scrollPadding: const EdgeInsets.only(bottom: 90),
        );
      },
    );
  }
}

class _RatingInput extends StatelessWidget {
  const _RatingInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.rating != c.rating,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hodnocení',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              width: 240,
              child: Row(
                children: [
                  for (var i = 1; i < 6; i++)
                    IconButton(
                      onPressed: () => context
                          .read<SaunaVisitManageBloc>()
                          .add(VisitHistoryRatingChangedEvent(i)),
                      icon: Icon(
                        state.rating.value >= i
                            ? Icons.star
                            : Icons.star_border,
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ReviewInput extends StatelessWidget {
  const _ReviewInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.review != c.review,
      builder: (context, state) {
        return FormzTextField(
          readOnly: state.status == FormzStatus.submissionInProgress,
          label: 'Veřejná recenze návštěvy',
          minLines: 3,
          onChanged: (s) => context
              .read<SaunaVisitManageBloc>()
              .add(VisitHistoryReviewChangedEvent(s)),
          text: state.review.value,
          scrollPadding: const EdgeInsets.only(bottom: 90),
        );
      },
    );
  }
}

class _SaunaIdInput extends StatelessWidget {
  const _SaunaIdInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
      buildWhen: (p, c) => p.sauna != c.sauna,
      builder: (context, state) {
        return OpenContainer<Fragment$SaunaAutocompleteFragment>(
          closedBuilder: (_, action) => TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: state.sauna.value?.name ?? 'Sauna',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search),
              ),
              onTap: action),
          openBuilder: (_, action) => SaunaAutocompletePage(action),
          onClosed: (fragment) {
            if (fragment == null) return;
            context
                .read<SaunaVisitManageBloc>()
                .add(VisitHistorySaunaIdChangedEvent(fragment));
          },
        );
      },
    );
  }
}

class VisitHistoryManageView extends StatelessWidget {
  const VisitHistoryManageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
        title: const Text('Zapsat návštěvu'),
        actions: [
          BlocBuilder<SaunaVisitManageBloc, SaunaVisitManageState>(
            buildWhen: (p, c) => p.status != c.status,
            builder: (context, state) {
              return TextButton(
                onPressed: () => context
                    .read<SaunaVisitManageBloc>()
                    .add(VisitHistorySubmittedEvent()),
                child: state.status == FormzStatus.submissionInProgress
                    ? const CircularProgressIndicator()
                    : const Text('Uložit'),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              _SaunaIdInput(),
              SizedBox(height: 8),
              _VisitedAtInput(),
              SizedBox(height: 8),
              _DurationInput(),
              SizedBox(height: 8),
              _CyclesInput(),
              SizedBox(height: 8),
              _RatingInput(),
              SizedBox(height: 8),
              _ReviewInput(),
              SizedBox(height: 8),
              _NoteInput(),
            ],
          ),
        ),
      ),
    );
  }
}
