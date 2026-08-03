"""Exact arithmetic checks for the identities in research_state.md.

This does not search for parameters or test convergence.  It checks only the
finite algebraic identities used in the write-up, on several fixed admissible
parameter tuples.
"""

from fractions import Fraction
from math import gcd


def step(n: int, B: int, e: int, a: int, c: int) -> int:
    q, r = divmod(n, B)
    return a * q + c if r == e else q


def centered(n: int, B: int, e: int, a: int, c: int) -> int:
    h = a * e - B * c
    return (a - B) * n - h


def check_one_expanding_normal_form() -> None:
    parameter_sets = [
        (3, 1, 28, 2),
        (2, 1, 3, 2),
        (2, 1, 5, 2),
        (5, 2, 11, 7),
    ]
    for B, e, a, c in parameter_sets:
        h = a * e - B * c
        for n in range(200):
            q, r = divmod(n, B)
            x = centered(n, B, e, a, c)
            x_next = centered(step(n, B, e, a, c), B, e, a, c)
            if r == e:
                assert B * x_next == a * x
            else:
                b_r = (a - B) * r + (B - 1) * h
                assert B * x_next == x - b_r


def check_finite_inverse_identity() -> None:
    B, e, a, c = 3, 1, 28, 2
    h = a * e - B * c
    for n0 in [0, 1, 2, 7, 31, 2026]:
        n = n0
        x0 = centered(n0, B, e, a, c)
        product_a = 1
        partial = Fraction(0)
        for j in range(20):
            _, r = divmod(n, B)
            if r == e:
                a_j, b_j = a, 0
            else:
                a_j = 1
                b_j = (a - B) * r + (B - 1) * h
            product_a *= a_j
            partial += Fraction(b_j * B**j, product_a)
            n = step(n, B, e, a, c)
            x_next = centered(n, B, e, a, c)
            remainder = Fraction(B ** (j + 1) * x_next, product_a)
            assert Fraction(x0) == remainder + partial


def check_balanced_remainder_family() -> None:
    for B in [3, 5, 7, 11]:
        e = (B - 1) // 2
        a = B + 2
        c = (B + 1) // 2
        for n in range(500):
            x = 2 * n + 1
            x_next = 2 * step(n, B, e, a, c) + 1
            if x % B == 0:
                assert B * x_next == (B + 2) * x
            else:
                d = x % B
                if d % 2:
                    d -= B
                assert d != 0
                assert -(B - 1) <= d <= B - 1
                assert d % 2 == 0
                assert B * x_next == x - d


def check_ceiling_division_family() -> None:
    for B in [2, 3, 5, 10, 31]:
        e = B - 1
        a = B + 1
        c = B
        for n in range(500):
            x = n + 1
            x_next = step(n, B, e, a, c) + 1
            if x % B == 0:
                assert B * x_next == (B + 1) * x
            else:
                assert x_next == (x + B - 1) // B


def check_ceiling_gap_certificates() -> None:
    for B in [2, 3, 5, 10]:
        a = B + 1
        for n0 in [0, 1, 2, 7, 31, 2026]:
            x = n0 + 1
            division_times: list[int] = []
            division_digits: list[int] = []
            division_values: list[int] = []
            for j in range(300):
                if x % B:
                    division_times.append(j)
                    division_digits.append(B - x % B)
                    division_values.append(x)
                x = a * (x // B) if x % B == 0 else (x + B - 1) // B
                if len(division_times) >= 12:
                    break

            assert len(division_times) >= 12
            for m in range(1, len(division_times) - 1):
                tau_prev = division_times[m - 1]
                tau = division_times[m]
                tau_next = division_times[m + 1]
                l_prev = tau - tau_prev - 1
                l_now = tau_next - tau - 1
                u_prev = division_values[m] // a**l_prev
                d_now = division_digits[m]
                after_division = (division_values[m] + d_now) // B
                assert after_division % B**l_now == 0
                u_now = after_division // B**l_now
                assert u_now % B
                assert B ** (l_now + 1) * u_now == (
                    a**l_prev * u_prev + d_now
                )

            x0 = n0 + 1
            for m in range(1, len(division_times) - 1):
                tau_next = division_times[m + 1]
                tau_m = division_times[m]
                lambda_m = tau_m - (m + 1) + 1
                l_now = tau_next - tau_m - 1
                d_now = division_digits[m]
                u_now = (division_values[m] + d_now) // B ** (l_now + 1)
                rhs = a**lambda_m * x0
                for i in range(m + 1):
                    tau_i = division_times[i]
                    lambda_i = tau_i - (i + 1) + 1
                    rhs += (
                        division_digits[i]
                        * B**tau_i
                        * a ** (lambda_m - lambda_i)
                    )
                assert B**tau_next * u_now == rhs


def check_negative_center_family() -> None:
    for a in [3, 5, 9, 17]:
        for M in [1, 3, 7, 15]:
            c = a * (M + 1) // 2 - M
            assert c >= 0
            for n in range(500):
                y = n + M
                y_next = step(n, 2, 1, a, c) + M
                if y % 2 == 0:
                    assert 2 * y_next == a * y
                else:
                    assert 2 * y_next == y + M


def check_bounded_chain_certificate() -> None:
    for B in [2, 3, 5, 10]:
        a = B + 1
        for n0 in [0, 1, 2, 7, 31, 2026]:
            x = n0 + 1
            division_times: list[int] = []
            division_digits: list[int] = []
            division_values: list[int] = []
            for j in range(500):
                if x % B:
                    division_times.append(j)
                    division_digits.append(B - x % B)
                    division_values.append(x)
                x = a * (x // B) if x % B == 0 else (x + B - 1) // B
                if len(division_times) >= 15:
                    break

            assert len(division_times) >= 15
            L: list[int] = []
            u: list[int] = []
            for i in range(len(division_times) - 1):
                l_i = division_times[i + 1] - division_times[i] - 1
                d_i = division_digits[i]
                L.append(l_i)
                u.append((division_values[i] + d_i) // B ** (l_i + 1))

            for s in range(1, 8):
                for t in range(s, min(s + 5, len(L))):
                    exponent_B = sum(L[i] + 1 for i in range(s, t + 1))
                    exponent_a = sum(L[k] for k in range(s - 1, t))
                    correction = 0
                    for j in range(s, t + 1):
                        prefix_B = sum(L[i] + 1 for i in range(s, j))
                        suffix_a = sum(L[k] for k in range(j, t))
                        correction += (
                            division_digits[j]
                            * B**prefix_B
                            * a**suffix_a
                        )
                    assert B**exponent_B * u[t] == (
                        a**exponent_a * u[s - 1] + correction
                    )
                    assert correction % gcd(u[s - 1], u[t]) == 0


def check_global_normalization() -> None:
    for B in [2, 3, 5, 10]:
        a = B + 1
        for n0 in [0, 1, 2, 7, 31, 2026]:
            x0 = n0 + 1
            x = x0
            expansions = 0
            divisions = 0
            correction_numerator_terms: list[Fraction] = []
            for j in range(80):
                z = Fraction(B**j * x, a**expansions)
                assert z == Fraction(x0) + sum(correction_numerator_terms)
                assert Fraction(x0) <= z <= Fraction(x0 + B**divisions - 1)

                if x % B == 0:
                    x = a * (x // B)
                    expansions += 1
                else:
                    d = B - x % B
                    correction_numerator_terms.append(
                        Fraction(d * B**j, a**expansions)
                    )
                    x = (x + d) // B
                    divisions += 1


def check_prime_factor_reset_candidate() -> None:
    B, e, a, c = 3, 1, 4, 2
    for n0 in [0, 1, 2, 7, 31, 2026, 65537]:
        x = n0 + 2
        division_values: list[int] = []
        division_digits: list[int] = []
        division_times: list[int] = []
        for j in range(500):
            if x % B:
                division_values.append(x)
                division_digits.append(2 if x % B == 1 else 4)
                division_times.append(j)
            x = 4 * (x // 3) if x % 3 == 0 else (
                (x + 2) // 3 if x % 3 == 1 else (x + 4) // 3
            )
            if len(division_times) >= 20:
                break

        assert len(division_times) >= 20
        for m in range(1, len(division_times) - 1):
            l_prev = division_times[m] - division_times[m - 1] - 1
            l_now = division_times[m + 1] - division_times[m] - 1
            u_prev = division_values[m] // 4**l_prev
            d_now = division_digits[m]
            u_now = (division_values[m] + d_now) // 3 ** (l_now + 1)
            assert 3 ** (l_now + 1) * u_now == 4**l_prev * u_prev + d_now
            if d_now == 2 and l_prev >= 1:
                assert u_now % 4 == 2
            if d_now == 4 and l_prev >= 2:
                assert u_now % 8 == 4

        run_lengths = [
            division_times[i + 1] - division_times[i] - 1
            for i in range(len(division_times) - 1)
        ]
        units = [
            (division_values[i] + division_digits[i])
            // 3 ** (run_lengths[i] + 1)
            for i in range(len(run_lengths))
        ]

        def digit_valuation(digit: int) -> int:
            return 1 if digit == 2 else 2

        valid_indices: list[int] = []
        odd_cores: dict[int, int] = {}
        s_exponents: dict[int, int] = {}
        r_exponents: dict[int, int] = {}
        for i in range(2, len(run_lengths)):
            if run_lengths[i - 2] < 2 or run_lengths[i - 1] < 2:
                continue
            t_prev = digit_valuation(division_digits[i - 1])
            t_now = digit_valuation(division_digits[i])
            w_prev = units[i - 1] // 2**t_prev
            w_now = units[i] // 2**t_now
            s_i = 2 * run_lengths[i - 1] + t_prev - t_now
            r_i = run_lengths[i] + 1
            assert s_i >= 3
            assert w_prev % 2 and w_now % 2
            assert w_prev % 3 and w_now % 3
            assert 3**r_i * w_now == 2**s_i * w_prev + 1
            valid_indices.append(i)
            odd_cores[i - 1] = w_prev
            odd_cores[i] = w_now
            s_exponents[i] = s_i
            r_exponents[i] = r_i

        for s in valid_indices:
            for t in range(s, min(s + 4, len(run_lengths))):
                if any(i not in s_exponents for i in range(s, t + 1)):
                    break
                lhs = 3 ** sum(r_exponents[i] for i in range(s, t + 1))
                lhs *= odd_cores[t]
                rhs = 2 ** sum(s_exponents[i] for i in range(s, t + 1))
                rhs *= odd_cores[s - 1]
                for j in range(s, t + 1):
                    rhs += 2 ** sum(
                        s_exponents[k] for k in range(j + 1, t + 1)
                    ) * 3 ** sum(r_exponents[k] for k in range(s, j))
                assert lhs == rhs

        for i in valid_indices:
            if i + 1 not in s_exponents:
                continue
            w_i = odd_cores[i]
            assert (3 ** r_exponents[i] * w_i - 1) % 2 ** s_exponents[i] == 0
            assert (
                2 ** s_exponents[i + 1] * w_i + 1
            ) % 3 ** r_exponents[i + 1] == 0

        marked = [
            j
            for j in range(len(run_lengths) - 1)
            if run_lengths[j] >= 2
        ]
        for j in marked:
            for k in marked:
                if not (j < k <= j + 5):
                    continue
                if k + 1 >= len(units):
                    continue
                t_start = digit_valuation(division_digits[j + 1])
                t_end = digit_valuation(division_digits[k + 1])
                assert units[j + 1] % 2**t_start == 0
                assert units[k + 1] % 2**t_end == 0
                w_start = units[j + 1] // 2**t_start
                w_end = units[k + 1] // 2**t_end
                assert gcd(w_start, 6) == 1
                assert gcd(w_end, 6) == 1

                r_total = sum(
                    run_lengths[i] + 1 for i in range(j + 2, k + 2)
                )
                a_total = sum(run_lengths[h] for h in range(j + 1, k + 1))
                s_total = 2 * a_total + t_start - t_end
                correction = 0
                for i in range(j + 2, k + 2):
                    exponent_two = (
                        2 * sum(run_lengths[h] for h in range(i, k + 1))
                        + digit_valuation(division_digits[i])
                        - t_end
                    )
                    exponent_three = sum(
                        run_lengths[h] + 1 for h in range(j + 2, i)
                    )
                    assert exponent_two >= 0
                    correction += 2**exponent_two * 3**exponent_three
                assert 3**r_total * w_end == (
                    2**s_total * w_start + correction
                )


def check_full_coding_sections() -> None:
    # The section slopes along the all-expansion cylinders are a^k.
    for B, e, a, c in [(2, 1, 3, 2), (3, 1, 4, 2), (3, 1, 28, 2)]:
        def itinerary(n: int, count: int) -> list[int]:
            result: list[int] = []
            for _ in range(count):
                result.append(n % B)
                n = step(n, B, e, a, c)
            return result

        def iterate(n: int, count: int) -> int:
            for _ in range(count):
                n = step(n, B, e, a, c)
            return n

        for k in range(1, 7):
            # Find the unique lift whose first k residues are all e.
            modulus = B**k
            prefixes = [
                n for n in range(modulus) if itinerary(n, k) == [e] * k
            ]
            assert len(prefixes) == 1
            prefix = prefixes[0]
            base = iterate(prefix, k)
            for q in range(6):
                assert iterate(prefix + modulus * q, k) == base + a**k * q


def check_binary_section_root_valuations() -> None:
    # These examples have E={1,...,B-1}; only the selected all-e branch is
    # needed to audit the unique all-division-section root formula.
    for B, e, a, c, p in [(3, 1, 4, 3, 2), (5, 2, 7, 5, 7)]:
        h = a * e - B * c
        assert h

        def vp_integer(value: int) -> int:
            result = 0
            while value % p == 0:
                value //= p
                result += 1
            return result

        previous_vp: int | None = None
        for k in range(1, 9):
            x_k = Fraction(h * (a**k - B**k), a**k * (a - B))
            x = x_k
            for _ in range(k):
                x = Fraction(a * x - h, B)
            assert x == 0

            numerator = x_k.numerator
            denominator = x_k.denominator
            modulus = B**k
            p_k = numerator * pow(denominator, -1, modulus) % modulus
            q_k = (x_k - p_k) / modulus
            actual_vp = vp_integer(q_k.numerator) - vp_integer(q_k.denominator)
            expected_vp = vp_integer(h) - k * vp_integer(a)
            if expected_vp < 0:
                assert actual_vp == expected_vp
                if previous_vp is not None:
                    assert actual_vp < previous_vp
                previous_vp = actual_vp


def check_deleted_digit_second_moment() -> None:
    examples = [
        (3, {0, 2}),
        (5, {0, 1, 4}),
        (6, {0, 2, 5}),
        (10, {0, 1, 7, 9}),
    ]
    for B, digits in examples:
        d = len(digits)
        one_digit_moment = sum(
            (left - right) ** 2 for left in digits for right in digits
        )
        for k in range(1, 5):
            values = [0]
            for position in range(k):
                values = [
                    value + digit * B**position
                    for value in values
                    for digit in digits
                ]
            direct_moment = sum(
                (left - right) ** 2 for left in values for right in values
            )
            formula = (
                d ** (2 * k - 2)
                * one_digit_moment
                * sum(B ** (2 * j) for j in range(k))
            )
            assert direct_moment == formula


def check_prime_power_macro_general() -> None:
    B, e, a, c = 5, 1, 8, 2
    p, g = 2, 3
    h = a * e - B * c

    def vp(value: int) -> int:
        value = abs(value)
        result = 0
        while value % p == 0:
            value //= p
            result += 1
        return result

    prescribed_runs = [2, 0, 3, 1, 2, 0, 4, 1, 2, 3]
    prescribed_word: list[int] = []
    division_residues = [0, 2, 3, 4]
    for index, run_length in enumerate(prescribed_runs):
        prescribed_word.append(division_residues[index % len(division_residues)])
        prescribed_word.extend([e] * run_length)
    prescribed_word.append(division_residues[len(prescribed_runs) % 4])

    representative = 0
    modulus = 1
    for length, desired_residue in enumerate(prescribed_word):
        lifts: list[int] = []
        for digit in range(B):
            candidate = representative + digit * modulus
            value = candidate
            for _ in range(length):
                value = step(value, B, e, a, c)
            if value % B == desired_residue:
                lifts.append(candidate)
        assert len(lifts) == 1
        representative = lifts[0]
        modulus *= B

    checked_links = 0
    for n0 in [0, 1, 2, 7, 31, 2026, 65537, representative]:
        n = n0
        division_times: list[int] = []
        division_values: list[int] = []
        division_corrections: list[int] = []
        for time in range(3000):
            _, residue = divmod(n, B)
            if residue != e:
                x = centered(n, B, e, a, c)
                b_residue = (a - B) * residue + (B - 1) * h
                division_times.append(time)
                division_values.append(x)
                division_corrections.append(-b_residue)
            n = step(n, B, e, a, c)
            if len(division_times) >= 40:
                break
        assert len(division_times) >= 40

        run_lengths = [
            division_times[i + 1] - division_times[i] - 1
            for i in range(len(division_times) - 1)
        ]
        units = [
            (division_values[i] + division_corrections[i])
            // B ** (run_lengths[i] + 1)
            for i in range(len(run_lengths))
        ]
        for i in range(1, len(units)):
            assert B ** (run_lengths[i] + 1) * units[i] == (
                a ** run_lengths[i - 1] * units[i - 1]
                + division_corrections[i]
            )

        t_max = max(vp(value) for value in division_corrections)
        marked = [
            j
            for j in range(len(run_lengths) - 1)
            if g * run_lengths[j] > t_max
        ]
        for j in marked:
            t_start = vp(division_corrections[j + 1])
            assert vp(units[j + 1]) == t_start
            for k in marked:
                if not (j < k <= j + 5) or k + 1 >= len(units):
                    continue
                t_end = vp(division_corrections[k + 1])
                assert vp(units[k + 1]) == t_end
                w_start = units[j + 1] // p**t_start
                w_end = units[k + 1] // p**t_end
                r_total = sum(
                    run_lengths[i] + 1 for i in range(j + 2, k + 2)
                )
                a_total = sum(run_lengths[h_] for h_ in range(j + 1, k + 1))
                s_total = g * a_total + t_start - t_end
                correction = 0
                for i in range(j + 2, k + 2):
                    t_i = vp(division_corrections[i])
                    epsilon_i = division_corrections[i] // p**t_i
                    exponent_p = (
                        g * sum(run_lengths[h_] for h_ in range(i, k + 1))
                        + t_i
                        - t_end
                    )
                    exponent_B = sum(
                        run_lengths[h_] + 1 for h_ in range(j + 2, i)
                    )
                    assert exponent_p >= 0
                    correction += epsilon_i * p**exponent_p * B**exponent_B
                assert B**r_total * w_end == (
                    p**s_total * w_start + correction
                )
                assert correction % p
                checked_links += 1
    assert checked_links


def check_endpoint_arithmetic_progression() -> None:
    B = 5
    expanding = {1: (7, 2), 3: (8, 4)}

    def general_step(value: int) -> int:
        quotient, residue = divmod(value, B)
        if residue not in expanding:
            return quotient
        multiplier, constant = expanding[residue]
        return multiplier * quotient + constant

    word = [1, 0, 3, 4, 1, 2]
    representative = 0
    modulus = 1
    for length, desired_residue in enumerate(word):
        lifts = []
        for digit in range(B):
            candidate = representative + digit * modulus
            value = candidate
            for _ in range(length):
                value = general_step(value)
            if value % B == desired_residue:
                lifts.append(candidate)
        assert len(lifts) == 1
        representative = lifts[0]
        modulus *= B

    multipliers = [
        expanding[residue][0] if residue in expanding else 1
        for residue in word
    ]
    prefix_products = [1]
    for multiplier in multipliers:
        prefix_products.append(prefix_products[-1] * multiplier)

    base_path = [representative]
    for _ in word:
        base_path.append(general_step(base_path[-1]))

    for lift_parameter in [0, 1, 2, 17, 101]:
        value = representative + B ** len(word) * lift_parameter
        for index, desired_residue in enumerate(word):
            assert value % B == desired_residue
            assert value == (
                base_path[index]
                + prefix_products[index]
                * B ** (len(word) - index)
                * lift_parameter
            )
            value = general_step(value)
        assert value == (
            base_path[-1] + prefix_products[-1] * lift_parameter
        )

    external_modulus = 65
    assert gcd(prefix_products[-1], external_modulus) == 1
    endpoint_residues = {
        (base_path[-1] + prefix_products[-1] * parameter)
        % external_modulus
        for parameter in range(external_modulus)
    }
    assert endpoint_residues == set(range(external_modulus))


def check_nearby_prime_family() -> None:
    for B, a in [(5, 7), (11, 13), (13, 17), (29, 31)]:
        e = (-pow(a, -1, B)) % B
        c = (a * e + 1) // B
        difference = a - B
        assert 1 <= e < B
        assert a * e - B * c == -1

        for n in range(1000):
            x = difference * n + 1
            n_next = step(n, B, e, a, c)
            x_next = difference * n_next + 1
            assert B * x_next <= a * x
            if n % B == e:
                assert B * x_next == a * x
                run_length = 0
                value = n
                while value % B == e:
                    run_length += 1
                    value = step(value, B, e, a, c)
                valuation = 0
                x_copy = x
                while x_copy % B == 0:
                    valuation += 1
                    x_copy //= B
                assert run_length == valuation
            else:
                residue = n % B
                correction = difference * residue - (B - 1)
                assert correction
                assert B * x_next == x - correction


if __name__ == "__main__":
    check_one_expanding_normal_form()
    check_finite_inverse_identity()
    check_balanced_remainder_family()
    check_ceiling_division_family()
    check_ceiling_gap_certificates()
    check_negative_center_family()
    check_bounded_chain_certificate()
    check_global_normalization()
    check_prime_factor_reset_candidate()
    check_full_coding_sections()
    check_binary_section_root_valuations()
    check_deleted_digit_second_moment()
    check_prime_power_macro_general()
    check_endpoint_arithmetic_progression()
    check_nearby_prime_family()
    print("all exact normal-form checks passed")
